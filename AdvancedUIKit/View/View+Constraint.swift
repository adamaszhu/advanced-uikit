/**
 * View+Constraint provides additional support to manipulate the constraint.
 * - author: Adamas
 * - version: 1.0.0
 * - date: 09/06/2017
 */
public extension UIView {
    
    /**
     * The constraints related to the frame of the view.
     */
    private var frameConstraints: Array<NSLayoutConstraint> {
        var frameConstraints = Array<NSLayoutConstraint>()
        if let superview = superview {
            for constraint in superview.constraints {
                if let firstItem = constraint.firstItem as? UIView, firstItem == self {
                    frameConstraints.append(constraint)
                    continue
                }
                if let secondItem = constraint.secondItem as? UIView, secondItem == self {
                    frameConstraints.append(constraint)
                    continue
                }
            }
        }
        for constraint in self.constraints {
            if constraint.secondItem != nil {
                frameConstraints.append(constraint)
            }
        }
        return frameConstraints
    }
    
    /**
     * Deactive the constraints related to the frame.
     */
    public func deactivateFrameConstraints() {
        for constraint in frameConstraints {
            constraint.isActive = false
        }
    }
    
    /**
     * Active the constraints related to the frame.
     */
    public func activateFrameConstraints() {
        for constraint in frameConstraints {
            constraint.isActive = true
        }
    }
    
}

import UIKit
