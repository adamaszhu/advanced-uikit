/// LocationHelperDelegate is used to perform an action when an action happens.
///
/// - author: Adamas
/// - version: 1.0.0
/// - date: 07/06/2017
public protocol LocationHelperDelegate {
    
    /// An error occurs.
    ///
    /// - Parameter error: The detail of the error.
    func locationHelper(_ locationHelper: LocationHelper, didCatchError error: String)
    
    /// Always authorization has been decided.
    ///
    /// - Parameter isAuthorized: Whether the authorization has been granted or not.
    func locationHelper(_ locationHelper: LocationHelper, didAuthorizeAlwaysAuthorization isAuthorized: Bool)
    
    /// When in use authorization has been decided.
    ///
    /// - Parameter isAuthorized: Whether the authorization has been granted or not.
    func locationHelper(_ locationHelper: LocationHelper, didAuthorizeWhenInUseAuthorization isAuthorized: Bool)
    
}

import Foundation

