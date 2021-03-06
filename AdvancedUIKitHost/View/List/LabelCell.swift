final class LabelCell: InfiniteCell {
    
    private let expandedCellIconName = "CollapseCell"
    private let collapsedCellIconName = "ExpandCell"
    
    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var switchIcon: UIImageView!
    
    override func render(withItem item: Any) {
        label.text = "\(item)"
    }
    
    override func expand() {
        switchIcon.image = UIImage(named: expandedCellIconName)
    }
    
    override func collapse() {
        switchIcon.image = UIImage(named: collapsedCellIconName)
    }
    
}

import AdvancedUIKit
import UIKit
