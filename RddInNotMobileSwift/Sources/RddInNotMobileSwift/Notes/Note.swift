import Foundation

struct Note: Codable {
    
    var content: String
    var createdAt: Date?
    
    init(content: String) {
        self.content = content
    }
    
    func toString() -> String {
        return createdAt?.description ?? "" + content
    }
}
