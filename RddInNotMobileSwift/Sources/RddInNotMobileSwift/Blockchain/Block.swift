import Foundation

class Block: Codable {
    
    var index: Int = 0
    var dateCreated: String
    var previousHash: String!
    var hash: String!
    var nonce: Int
    var data: Note
    
    var key: String {
        get {
            return String(self.index)
                + self.dateCreated
                + self.previousHash
                + self.data.toString()
                + String(self.nonce)
        }
    }
    
    init(data: Note) {
        self.dateCreated = Date().description
        self.nonce = 0
        self.data = data
    }
}

extension Block {
    
    static func createGenesisBlock() -> Block {
        return Block(data: Note(content: "Genesis note"))
    }
}
