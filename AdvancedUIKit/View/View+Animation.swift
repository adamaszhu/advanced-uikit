/**
 * View+Animation is used to perform an animation on a view like change the frame of a view.
 * - author: Adamas
 * - version: 1.0.0
 * - date: 28/04/2017
 */
public extension UIView {
    
    /**
     * The default animation period.
     */
    public static let defaultAnimationDuration = 0.25
    
    /**
     * Perform an animation.
     * - parameter change: The change to be animated.
     * - parameter duration: The period of the animation.
     * - parameter preparation: The action to be done before the animation.
     * - parameter completion: The action to be done after the animation.
     */
    public func animate(withChange change: @escaping () -> Void, withDuration duration: Double = defaultAnimationDuration, withPreparation preparation:(() -> Void)? = nil, withCompletion completion: (() -> Void)? = nil) {
        // TODO: Judge whether there has been an animation or not.
        layer.removeAllAnimations()
        preparation?()
        UIView.animate(withDuration: duration, animations: {
            change()
        }) { result in
            change()
            completion?()
        }
    }
    
}

import UIKit

