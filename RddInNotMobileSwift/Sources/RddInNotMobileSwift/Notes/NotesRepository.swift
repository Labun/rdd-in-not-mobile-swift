protocol NotesRepository  {
    func getAll() -> [Note]
    func add(item: Note) -> Note
}
