/// InfiniteListDelegate+Optional defines the default action triggered in the list.
///
/// - author: Adamas
/// - version: 1.0.0
/// - date: 02/07/2017
public extension InfiniteListDelegate {
    
    func infiniteList(_ infiniteList: InfiniteList, didSelectItem item: Any) { }
    func infiniteList(_ infiniteList: InfiniteList, didRequireLoadPage page: Int) { }
    func infiniteListDidRequireReload(_ infiniteList: InfiniteList) { }
    func infiniteListDidScroll(_ infiniteList: InfiniteList) { }
    func infiniteList(_ infiniteList: InfiniteList, didDeleteItem item: Any) { }
    
}
