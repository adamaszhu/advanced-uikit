enum Feature: String {
    
    case device = "Device"
    case label = "Label"
    case picker = "Picker"
    case message = "Message"
    case audio = "Audio"
    case notification = "Notification"
    case localization = "Localization"
    
    var viewControllerID: String {
        switch self {
        case .device:
            return String(describing: DeviceViewController.self)
        case .label:
            return String(describing: LabelViewController.self)
        case .picker:
            return String(describing: PickerViewController.self)
        case .message:
            return String(describing: MessageViewController.self)
        case .audio:
            return String(describing: AudioViewController.self)
        case .notification:
            return String(describing: NotificationViewController.self)
        case .localization:
            return String(describing: LocalizationViewController.self)
        }
    }
    
}

import Foundation
