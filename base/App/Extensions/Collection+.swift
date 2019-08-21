import Foundation

extension Collection {
    func find(includeElement:(Self.Iterator.Element) -> Bool) -> Self.Iterator.Element? {
        if let i = index(where: includeElement) { return self[i] }
        return nil
    }
    
    func index(of includeElement:(Self.Iterator.Element) -> Bool) -> Index? {
        return index(where: includeElement)
    }
}
