class InMemoryNotesRepository: NoteRepository {
    
    var notes = [Note]()
    
    func getAll() -> [Note] {
        return notes
    }
    
    func add(item: Note) {
        notes.append(item)
    }
}
