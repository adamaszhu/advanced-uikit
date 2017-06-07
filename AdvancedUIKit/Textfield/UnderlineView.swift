/**
 * UnderlineView records the underline for a text field.
 * - author: Adamas
 * - version: 1.0.0
 * - date: 05/06/2017
 */
class UnderlineView: UIView {
    
    /**
     * System error.
     */
    private let initError = "Constructor init(coder) shouldn't be called."
    
    /**
     * The normal color of the underline.
     */
    var color: UIColor
    
    /**
     * The highlighted color of the underline.
     */
    var highlightedColor: UIColor
    
    /**
     * Whether the underline is under highlighted status or not.
     */
    var isHighlighted: Bool {
        set {
            backgroundColor = newValue ? highlightedColor : color
        }
        get {
            return backgroundColor == highlightedColor
        }
    }
    
    /**
     * UIView
     */
    override init(frame: CGRect) {
        color = UIColor.clear
        highlightedColor = UIColor.clear
        super.init(frame: frame)
    }
    
    /**
     * UIView
     */
    required init?(coder aDecoder: NSCoder) {
        Logger.standard.logError(initError)
        return nil
    }
    
}

import UIKit
