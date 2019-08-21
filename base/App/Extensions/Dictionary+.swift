import Foundation

extension Dictionary {
    
    func union(other: Dictionary?) -> Dictionary {
        guard let otherDic = other else { return self }
        var tmp = self
        otherDic.forEach { tmp[$0.0] = $0.1 }
        return tmp
    }
}
