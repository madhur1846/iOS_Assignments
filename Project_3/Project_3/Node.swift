

import Foundation


class Node {
    static var dict:[Int:Node] = [Int:Node]()
    
    var name = ""
    var nodeId = 0
    var frontNodes = [Int]()
    var backNodes = [Int]()
    
    init(_ nodeId: Int,_ name: String) {
        self.name = name
        self.nodeId = nodeId
    }
}
