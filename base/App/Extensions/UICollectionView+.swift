import Foundation
import UIKit

extension UICollectionView {
    func register<T: UICollectionViewCell>(_ cellType: T.Type) where T: Nibable {
        register(T.nib, forCellWithReuseIdentifier: T.identifier)
    }
    
    func register<T: UICollectionViewCell>(_ cellType: T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.identifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(with cellType: T.Type, for indexPath: IndexPath) -> T {
        return dequeueReusableCell(withReuseIdentifier: T.identifier, for: indexPath) as! T
    }
}
