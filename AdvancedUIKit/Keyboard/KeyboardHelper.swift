/**
 * KeyboarHelper is used to optimize the soft keyboard performance.
 * - author: Adamas
 * - version: 1.0.0
 * - date: 05/06/2017
 */
public class KeyboardHelper: NSObject {
    
        /**
         * The delegate
         */
    public var keyboardHelperDelegate: KeyboardHelperDelegate?
    
    /**
     * The current view controller.
     */
    public var viewController: UIViewController!
    
        /**
         * A list of input views that need the help of KeyboardHelper.
         */
    public var inputViews: Array<UIView> {
        
                didSet {
        //            // TODO: Consider other types of views.
        //            for view in inputViewList {
        //                if view.isKindOfClass(UITextField.classForCoder()) {
        //                    (view as! UITextField).addTarget(self, action: #selector(textFieldDidChangeText), forControlEvents: UIControlEvents.EditingChanged)
        //                    (view as! UITextField).delegate = self
        //                } else if view.isKindOfClass(UISearchBar.classForCoder()) {
        //                    (view as!UISearchBar).delegate = self
        //                }
        //            }
                    actionFilterView.inputViews = inputViews
                }
    }
    
        /**
         * The assistant view used to perform gesture action.
         */
        private var actionFilterView: ActionFilterView
    
    
        /**
     * Initialize the object. It should be initalized after the view is rendered.
     * - parameter application: The application that contains the window.
     */
    public init(application: UIApplication = UIApplication.shared) {
            inputViews = []
            actionFilterView = ActionFilterView(frame: application.windows[0].bounds)
//            notificationCenter = NSNotificationCenter.defaultCenter()
//            keyboardHeight = 0
//            keyboardPushDuration = 0
            super.init()
            actionFilterView.actionFilterViewDelegate = self
        }
    
}

import UIKit

//public class KeyboardHelper:  {
//    
//    /**
//     * System message.
//     */
//    private static let InputViewError = "The input view doesn't exist."
//    private static let UnderlineAmountError = "The amount of underline views is not equals to the amount of input views."
//
//    
//    /**
//     * A list of input views that need the help of KeyboardHelper.
//     */
//    public var inputViewList: Array<UIView> {
//        /**
//         * - version: 0.0.3
//         * - date: 16/10/2016
//         */
//        willSet {
//            for view in inputViewList {
//                if view.isKindOfClass(UITextField.classForCoder()) {
//                    (view as! UITextField).removeTarget(self, action: #selector(textFieldDidChangeText), forControlEvents: UIControlEvents.EditingChanged)
//                }
//            }
//        }
//        /**
//         * - version: 0.0.3
//         * - date: 16/10/2016
//         */
//        didSet {
//            // TODO: Consider other types of views.
//            for view in inputViewList {
//                if view.isKindOfClass(UITextField.classForCoder()) {
//                    (view as! UITextField).addTarget(self, action: #selector(textFieldDidChangeText), forControlEvents: UIControlEvents.EditingChanged)
//                    (view as! UITextField).delegate = self
//                } else if view.isKindOfClass(UISearchBar.classForCoder()) {
//                    (view as!UISearchBar).delegate = self
//                }
//            }
//            keyboardActionView.inputViewList = inputViewList
//        }
//    }
//    
//    /**
//     * Judge whether the view should be pushed or not according to the position of the text field.
//     */
//    private var pushOffset: CGFloat {
//        /**
//         * - version: 0.0.3
//         * - date: 16/10/2016
//         */
//        get {
//            if currentInputView == nil {
//                // COMMENT: The keyboard is going to be hide.
//                return 0
//            }
//            let currentViewFrame = viewController.view.convertRect(currentInputView!.frame, fromView: currentInputView!.superview)
//            let currentViewBottomSpace = viewController.view.frame.size.height - currentViewFrame.origin.y - currentViewFrame.size.height
//            if currentViewBottomSpace < keyboardHeight {
//                // COMMENT: 30 is the gap between current view and the keyboard after the view being pushed up.
//                return currentViewBottomSpace - keyboardHeight - 30
//            }
//            return 0
//        }
//    }
//    
//    /**
//     * The notification center.
//     */
//    private var notificationCenter: NSNotificationCenter
//    
//    /**
//     * Current input view, which will be used to decide whether the view should be pushed up or not. It should be set either when the return button is clicked or when the begin editing is called.
//     */
//    private var currentInputView: UIView?
//
//    
//    /**
//     * The height of current keyboard. It is used under the situation that the input view has been changed without the change of keyboard height.
//     */
//    private var keyboardHeight: CGFloat
//    
//    /**
//     * The duration of pushing the keyboard. It is used under the situation that the input view has been changed without the change of keyboard height.
//     */
//    private var keyboardPushDuration: NSTimeInterval
//
//    
//    /**
//     * Start observing the keyboard.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     */
//    public func startObserving() {
//        notificationCenter.addObserver(self, selector: #selector(willShowKeyboard), name: UIKeyboardWillShowNotification, object: nil)
//        notificationCenter.addObserver(self, selector: #selector(willHideKeyboard), name: UIKeyboardWillHideNotification, object: nil)
//        notificationCenter.addObserver(self, selector: #selector(willChangeKeyboardFrame), name: UIKeyboardWillChangeFrameNotification, object: nil)
//    }
//    
//    /**
//     * Stop observing the keyboard.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     */
//    public func stopObserving() {
//        notificationCenter.removeObserver(self)
//        currentInputView = nil
//    }
//    
//    /**
//     * Hide the keyboard.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     */
//    public func hideKeyboard() {
//        currentInputView = nil
//        // COMMENT: No text field has been selected.
//        viewController.view.endEditing(true)
//    }
//    
//    /**
//     * Dismiss the keyboard. It only happens when the view is forced to remove focus or the hide keyboard method has been called.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     * - parameter notification: The notification of the keyboard action.
//     */
//    public func willHideKeyboard(withNotification notification: NSNotification) {
//        keyboardActionView.hidden = true
//        willChangeKeyboardFrame(withNotification: notification)
//        adjustOffset()
//    }
//    
//    /**
//     * Show the keyboard.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     * - parameter notification: The notification of the keyboard action.
//     */
//    public func willShowKeyboard(withNotification notification: NSNotification) {
//        keyboardActionView.hidden = false
//        willChangeKeyboardFrame(withNotification: notification)
//        adjustOffset()
//    }
//    
//    /**
//     * The frame of the keyboard will be changed. Get the height of the keyboard and duration while waiting for the adjustion.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     * - parameter notification: The notification of the keyboard action.
//     */
//    public func willChangeKeyboardFrame(withNotification notification: NSNotification) {
//        refreshKeyboardHeight(withNotification: notification)
//        refreshPushDuration(withNotification: notification)
//    }
//    
//    /**
//     * adjust the offset of the view.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     */
//    func adjustOffset() {
//        viewController.view.layer.removeAllAnimations()
//        UIView.animateWithDuration(keyboardPushDuration, animations: {
//            self.viewController.view.frame = CGRect(x: 0, y: self.pushOffset, width: self.viewController.view.frame.size.width, height: self.viewController.view.frame.size.height)
//        })
//    }
//    
//    /**
//     * Get the offset of the push animation.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     * - parameter notification: The notification of the keyboard action.
//     */
//    private func refreshKeyboardHeight(withNotification notification: NSNotification) {
//        let endKeyboardFrame = notification.userInfo?[UIKeyboardFrameEndUserInfoKey]?.CGRectValue
//        keyboardHeight = endKeyboardFrame == nil ? 0 : endKeyboardFrame!.size.height
//    }
//    
//    /**
//     * Refresh the duration of the animation.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     * - parameter notification: The notification of the keyboard action.
//     */
//    private func refreshPushDuration(withNotification notification: NSNotification) {
//        let userInfo = notification.userInfo?[UIKeyboardAnimationDurationUserInfoKey]
//        userInfo?.getValue(&keyboardPushDuration)
//        if keyboardPushDuration < 0.1 {
//            keyboardPushDuration = 0.1
//        }
//    }
//    
//    /**
//     * Finished inputing on an input view.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     * - parameter view: The view that has finished inputing action.
//     */
//    private func finishInput(onView view: UIView) {
//        let index = inputViewList.indexOf(view)
//        if index == nil {
//            logError(KeyboardHelper.InputViewError)
//            return
//        }
//        if index! < inputViewList.count - 1 {
//            inputViewList[index! + 1].becomeFirstResponder()
//        } else {
//            hideKeyboard()
//            keyboardHelperDelegate?.keyboardHelperDidConfirmInput(self)
//        }
//    }
//    
//    /**
//     * Change input view.
//     * - version: 0.0.3
//     * - date: 16/10/2016
//     * - parameter view: The new view.
//     */
//    private func changeInputView(view: UIView) {
//        // COMMENT: If previous input view is not nil, then the keyboard is shown. As a result, the view should adjusted.
//        let shouldAdjustOffset = currentInputView != nil
//        currentInputView = view
//        // COMMENT: Wait to see if the frame of the keyboard will be changed or not.
//        if shouldAdjustOffset {
//            // COMMENT: Make this specify to iOS 8 and below, since willShowKeyboard won't be called if the keyboard keeps the same in iOS 8 and below.
//            performSelector(#selector(adjustOffset), withObject: nil, afterDelay: 0.1)
//        }
//    }
//    
//}
