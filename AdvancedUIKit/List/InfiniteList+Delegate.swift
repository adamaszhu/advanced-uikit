/// InfiniteList+Delegate implements the delegate of UITableView
///
/// - author: Adamas
/// - version: 1.0.0
/// - date: 22/06/2017
extension InfiniteList: UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let item = items.element(atIndex: indexPath.row), status.isSelectingAvailable else {
            return
        }
        infiniteListDelegate?.infiniteList(self, didSelectItem: item.item)
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        guard let item = items.element(atIndex: indexPath.row), let cellType = cellType(for: item.type)  else {
            return 0
        }
        guard indexPath == expandedCellIndexPath else {
            return cellType.basicHeight
        }
        return cellType.height
    }
    
}

import UIKit
