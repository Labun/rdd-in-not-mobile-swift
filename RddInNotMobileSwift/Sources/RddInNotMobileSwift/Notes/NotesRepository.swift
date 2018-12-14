protocol NoteRepository  {
    func getAll() -> [Note]
    func add(item: Note)
}
