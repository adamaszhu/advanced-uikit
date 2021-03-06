/// PageView+ScrollViewDelegate detected the action when the page is switched.
///
/// - author: Adamas
/// - version: 1.0.0
/// - date: 14/06/2017
extension PageView: UIScrollViewDelegate {
    
    public func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let pageIndex = Int(round(contentOffset.x / frame.width))
        if pageIndex != currentPageIndex {
            pageControl.currentPage = pageIndex
        }
    }
    
}

import Foundation
import UIKit
