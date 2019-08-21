import Foundation
import UIKit

protocol Storyboardable: NSObjectProtocol {
    static var storyboardName: String { get }
    static func instantiate() -> Self
}

extension Storyboardable where Self: UIViewController {
    static var storyboardName: String {
        return className
    }
    
    static func instantiate() -> Self {
        return UIStoryboard(
            name: storyboardName,
            bundle: Bundle(for: Self.self)
            ).instantiateInitialViewController() as! Self
    }
}
