/// ExpandableView+Action implements the default action that an extandable view should have.
///
/// - author: Adamas
/// - version: 1.0.0
/// - date: 19/06/2017
extension ExpandableView {
    
    /// Wait until the view has been added back to the original superview and add constraints.
    ///
    /// - Parameter view: The view.
    func addOriginalConstraints(of view: UIView) {
        guard let superview = view.superview else {
            Logger.standard.log(error: Self.superviewError)
            return
        }
        superview.addConstraints(originalFrameConstraints)
        view.addConstraints(originalConstraints)
    }
    
    /// Save the original constaints for later recovery.
    ///
    /// - Parameter view: The view.
    func saveOriginalConstraints(of view: UIView) {
        guard let superview = view.superview else {
            Logger.standard.log(error: Self.superviewError)
            return
        }
        originalSuperview = superview
        originalZIndex = superview.subviews.index(of: view)
        originalFrame = view.frame
        originalFrameConstraints = view.frameConstraints
        originalConstraints = view.constraints
    }
    
    /// Move current view to the window.
    ///
    /// - Parameter view: The view.
    func moveToWindow(of view: UIView) {
        guard let window = view.window else {
            Logger.standard.log(error: ExpandableMapView.windowError)
            return
        }
        guard let superview = view.superview else {
            Logger.standard.log(error: ExpandableMapView.superviewError)
            return
        }
        superview.removeConstraints(originalFrameConstraints)
        view.removeConstraints(originalConstraints)
        view.removeFromSuperview()
        window.addSubview(view)
        view.frame = window.convert(originalFrame, from: originalSuperview)
        view.translatesAutoresizingMaskIntoConstraints = true
    }
    
    /// Remove the view from window and move it back to its original superview.
    ///
    /// - Parameter view: The view.
    func removeFromWindow(of view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.removeFromSuperview()
        originalSuperview.insertSubview(view, at: originalZIndex)
        addOriginalConstraints(of: view)
        // Wait the view to be refreshed and add the constraint back
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.2) { [unowned self] in
            self.addOriginalConstraints(of: view)
        }
    }
    
}

import UIKit
