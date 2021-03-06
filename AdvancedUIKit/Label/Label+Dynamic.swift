/// Label+Dynamic contains dynamic content of a label.
///
/// - author: Adamas
/// - version: 1.0.0
/// - date: 22/04/2017
public extension UILabel {
    
    /// System warning.
    private static let textWarning = "The text is nil."
    
    /// Get the position of the last character.
    @objc public var endPosition: CGPoint {
        guard lineAmount != 0 else {
            return frame.origin
        }
        // If lastLine is nil, then the logic should be fixed.
        let lastLine = text!.measuredLines(withFont: font, inView: self).last!
        let lastLineLength = lastLine.measuredWidth(withFont: font)
        let offsetX = lastLineLength
        let offsetY = frame.height - lineHeight
        return CGPoint(x: frame.origin.x + offsetX, y: frame.origin.y + offsetY)
    }
    
    /// Get the height of each line.
    @objc public var lineHeight: CGFloat {
        return font.lineHeight
    }
    
    /// How many lines are presented.
    @objc public var lineAmount: Int {
        guard let text = text else {
            Logger.standard.log(warning: UILabel.textWarning)
            return 0
        }
        return text.measuredLineAmount(withFont: font, inView: self)
    }
    
    /// The actual height of the text.
    @objc public var actualHeight: CGFloat {
        guard let text = text else {
            Logger.standard.log(warning: UILabel.textWarning)
            return 0
        }
        return text.measuredHeight(withFont: font, inView: self)
    }
    
}

import UIKit


