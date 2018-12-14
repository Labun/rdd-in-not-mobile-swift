import Foundation

struct Note: Codable {
    
    var content: String
    var mood: String?
    var createdAt: Date?
    
    init(content: String, mood: String) {
        self.content = content
        self.mood = mood
    }
    
    func toString() -> String {
        return createdAt?.description ?? "" + content
    }
}
