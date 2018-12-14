import Foundation

class NotesCtrl {
    
    let notesRepository: NotesRepository
    let classificationService: ClassificationService
    
    init(notesRepository: NotesRepository,
         classificationService: ClassificationService) {
        self.notesRepository = notesRepository
        self.classificationService = classificationService
    }
    
    func getAll() -> [Note] {
        return notesRepository.getAll()
    }
    
    func add(item: Note) -> Note {
        
        let sentiment = classificationService.predictSentiment(from: item.content)
        print(sentiment.emoji)
        
        
        var note = item
        note.createdAt = Date()
        note.mood = sentiment.emoji

        return notesRepository.add(item: note)
    }
}
