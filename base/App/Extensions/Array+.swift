extension Array where Element: Equatable {
    typealias E = Element
    
    func subtracting(_ other: [E]) -> [E] {
        return self.compactMap { element in
            if (other.filter { $0 == element }).count == 0 {
                return element
            } else {
                return nil
            }
        }
    }
    
    mutating func subtract(_ other: [E]) {
        self = subtracting(other)
    }
    
    mutating func remove(value: Element) {
        if let i = self.index(of: value) {
            self.remove(at: i)
        }
    }
}
