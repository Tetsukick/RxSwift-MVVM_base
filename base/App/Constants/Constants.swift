import Foundation
import UIKit

final class Constants {
    let serverScheme: String = "https"
    let serverFQDN: String = "asia-quest.jp"
    let apiVersion: String = "v1"
    
    let keyBoardHeight:Int = 100
    
    let screenWidth  = Int(UIScreen.main.bounds.size.width)
    let screenHeight = Int(UIScreen.main.bounds.size.height)
    
    enum DeviceDisplay {
        case iphone4
        case iphone5
        case iphone6
        case iphonePlus
        case iphoneX
    }
}

extension Constants.DeviceDisplay {
    var size: CGSize {
        get {
            switch self {
            case .iphone4:
                return CGSize(width: 320, height: 480)
            case .iphone5:
                return CGSize(width: 320, height: 568)
            case .iphone6:
                return CGSize(width: 375, height: 667)
            case .iphonePlus:
                return CGSize(width: 414, height: 736)
            case .iphoneX:
                return CGSize(width: 375, height: 812)
            }
        }
    }
}
