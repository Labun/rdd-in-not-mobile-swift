import Foundation

class InMemoryNotesRepository: NotesRepository {
    
    var notes = [Note]()
    
    func getAll() -> [Note] {
        return notes
    }
    
    func add(item: Note) -> Note {
       
        var note = item
        note.createdAt = Date()
        notes.append(note)
        
        return note
    }
}
