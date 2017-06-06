/**
 * DeviceHelper is used to perform an user interaction. Such as sending an email or making a phone call.
 * - version: 1.0.0
 * - date: 17/02/2017
 */
public class DeviceHelper: NSObject {
    
    /**
     * The singleton instance in the system.
     */
    public static let standard: DeviceHelper = DeviceHelper()
    
    /**
     * User error.
     */
    private static let dialError = "DialError"
    private static let mapError = "MapError"
    
    /**
     * System error.
     */
    private static let phoneNumberError = "The phone number is invalid."
    private static let addressError = "The address is incorrect."
    private static let attachmentError = "The attachment is invalid."
    private static let windowError = "The window presented is invalid."
    
    /**
     * System warning.
     */
    private static let navigationWarning = "The view doesn't have a navigation controller."
    
    /**
     * Function url.
     */
    private static let dailPrefix = "telprompt://"
    private static let mapPrefix = "http://maps.apple.com/?q="
    
    /**
     * The delegate of the DeviceHelper.
     */
    public var deviceHelperDelegate: DeviceHelperDelegate?
    
    /**
     * The application used to do the action.
     */
    private let application: UIApplication
    
    /**
     * Make a phone call.
     * - parameter number: The phone number.
     */
    public func dial(withNumber number: String) {
        guard let dialURL = URL(string: "\(DeviceHelper.dailPrefix)\(number)") else {
            Logger.standard.logInfo(DeviceHelper.phoneNumberError, withDetail: number)
            return
        }
        open(dialURL, withError: DeviceHelper.dialError)
    }
    
    /**
     * Show a location in the map application. Please let the user confirm the action beforehand.
     * - parameter address: The address to be shown.
     */
    public func showMap(ofAddress address: String) {
        let formattedAddress = address.replacingOccurrences(of: " ", with: "+")
        guard let mapURL = URL(string: "\(DeviceHelper.mapPrefix)\(formattedAddress)") else {
            Logger.standard.logInfo(DeviceHelper.addressError, withDetail: address)
            return
        }
        open(mapURL, withError: DeviceHelper.mapError)
    }
    
    /**
     * Send an email. Please let the user confirm the action beforehand. The navigation controller should be apply if there is a view hierarchy.
     * - parameter address: The email address.
     * - parameter subject: The subject of the email.
     * - parameter content: The content of the email.
     * - parameter isHTMLContent: Whether the content is a html or not.
     * - parameter attachments: A list of attachments of the email. It is a list of name and data pair
     */
    public func email(toAddress address: String, withSubject subject: String, withContent content: String, withAttachments attachments: Dictionary<String, Data> = [:], asHTMLContent isHTML: Bool = false) {
        let mailViewController = MFMailComposeViewController()
        mailViewController.mailComposeDelegate = self
        mailViewController.setToRecipients([address])
        mailViewController.setSubject(subject)
        for (name, data) in attachments {
            guard let mimeType = FileInfoAccessor(path: name).mimeType else {
                Logger.standard.logError(DeviceHelper.attachmentError, withDetail: name)
                continue
            }
            mailViewController.addAttachmentData(data, mimeType: mimeType, fileName: name);
        }
        mailViewController.setMessageBody(content, isHTML: isHTML)
        guard var rootViewController = application.keyWindow?.rootViewController else {
            Logger.standard.logError(DeviceHelper.windowError)
            return
        }
        if let navigationController = rootViewController as? UINavigationController {
            rootViewController = navigationController.viewControllers.last ?? navigationController
        } else {
            Logger.standard.logWarning(DeviceHelper.navigationWarning)
        }
        rootViewController.present(mailViewController, animated: true, completion: nil)
    }
    
    /**
     * Open an URL.
     * - parameter url: The url to be opened.
     * - parameter message: The message to be performed if the URL is not available.
     */
    private func open(_ url: URL, withError error: String) {
        guard application.canOpenURL(url) else {
            deviceHelperDelegate?.deviceHelper(self, didCatchError: error.localizeWithinFramework(forType: DeviceHelper.self))
            return
        }
        if #available(iOS 10.0, *) {
            application.open(url, options: [:], completionHandler: nil)
        } else {
            application.openURL(url)
        }
    }
    
    /**
     * Initialize the object.
     * - parameter application: The application used to make a function call.
     */
    public init(application: UIApplication = UIApplication.shared) {
        self.application = application
        super.init()
    }
    
}

import Foundation
import MessageUI
