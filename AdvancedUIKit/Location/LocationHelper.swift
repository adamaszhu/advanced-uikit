/// LocationHelper provides additional support for LocationManager.
///
/// - author: Adamas
/// - version: 1.0.4
/// - date: 08/12/2017
final public class LocationHelper: CLLocationManager {
    
    /// The delegate.
    public var locationHelperDelegate: LocationHelperDelegate?
    
    /// The type of authorization that has been requested.
    var authorizingStatus: CLAuthorizationStatus
    
    /// The bundle.
    private let bundle: Bundle
    
    /// Which authorization is
    public var isAlwaysAuthorizationAuthorized: Bool {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways:
            return true
        default:
            return false
        }
    }
    
    /// Whether the when in use authorization is authorized or not.
    public var isWhenInUseAuthorizationAuthorized: Bool {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            return true
        default:
            return false
        }
    }
    
    /// Whether the authorization is still not determinated or not.
    public var isUnauthorized: Bool {
        switch CLLocationManager.authorizationStatus() {
        case .notDetermined:
            return true
        default:
            return false
        }
    }
    
    /// CLLocationManager
    ///
    /// - Parameter bundle: The bundle where the Info.plist file exists.
    public init(bundle: Bundle = Bundle.main) {
        authorizingStatus = .notDetermined
        self.bundle = bundle
        super.init()
        delegate = self
    }
    
    /// Check whether a description key exsits in the Info.plist file or not.
    ///
    /// - Parameter key: The key to be checked.
    /// - Returns: Whether the key exists or not.
    private func checkDescriptionKey(_ key: String) -> Bool {
        return bundle.object(forInfoDictionaryKey: key) != nil
    }
    
    public override func requestAlwaysAuthorization() {
        guard isUnauthorized else {
            locationHelperDelegate?.locationHelper(self, didCatchError: LocationHelper.authorizationError.localizedInternalString(forType: LocationHelper.self))
            return
        }
        guard checkDescriptionKey(LocationHelper.alwaysDescriptionKey) == true else {
            Logger.standard.log(error: LocationHelper.descriptionKeyError, withDetail: LocationHelper.alwaysDescriptionKey)
            return
        }
        authorizingStatus = .authorizedAlways
        super.requestAlwaysAuthorization()
    }
    
    public override func requestWhenInUseAuthorization() {
        guard isUnauthorized else {
            locationHelperDelegate?.locationHelper(self, didCatchError: LocationHelper.authorizationError.localizedInternalString(forType: LocationHelper.self))
            return
        }
        guard checkDescriptionKey(LocationHelper.whenInUseDescriptionKey) == true else {
            Logger.standard.log(error: LocationHelper.descriptionKeyError, withDetail: LocationHelper.whenInUseDescriptionKey)
            return
        }
        authorizingStatus = .authorizedWhenInUse
        super.requestWhenInUseAuthorization()
    }
    
}

import CoreLocation
import Foundation
