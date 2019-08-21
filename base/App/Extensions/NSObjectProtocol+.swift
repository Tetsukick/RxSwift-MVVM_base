import UIKit
import Foundation

extension NSObjectProtocol {
    static var className: String {
        return String(describing: self)
    }
}
