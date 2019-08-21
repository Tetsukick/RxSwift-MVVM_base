import UIKit
import Foundation

extension UIColor {
    
    class func sampleColor() -> UIColor {
        return UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    class func rgbColor(rgbValue: UInt) -> UIColor {
        return UIColor(
            red:   CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >>  8) / 255.0,
            blue:  CGFloat( rgbValue & 0x0000FF)        / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    class func argbColor(argbValue: UInt) -> UIColor {
        return UIColor(
            red:    CGFloat((argbValue & 0x00FF0000) >> 16) / 255.0,
            green:  CGFloat((argbValue & 0x0000FF00) >>  8) / 255.0,
            blue:   CGFloat( argbValue & 0x000000FF)        / 255.0,
            alpha:  CGFloat((argbValue & 0xFF000000) >> 24) / 255.0
        )
    }
}
