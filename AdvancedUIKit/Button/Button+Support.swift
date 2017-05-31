/**
 * UIButton+Support contains additional support for a button
 * - author: Adamas
 * - version: 1.0.0
 * - date: 31/05/2017
 */
public extension UIButton {
    
    /**
     * Set and get the title of the button.
     */
    public var title: String? {
        set {
            setTitle(title, for: .normal)
        }
        get {
            return titleLabel?.text
        }
    }
    
}

import UIKit


