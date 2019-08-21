import Foundation
import UIKit

extension UIViewController {
    
    class func getTopViewController() -> UIViewController? {
        var topController = UIApplication.shared.keyWindow?.rootViewController
        
        if var tc = topController {
            while tc.presentedViewController != nil {
                if let present = tc.presentedViewController {
                    tc = present
                }
            }
            topController = tc
        }
        return topController
    }
}
