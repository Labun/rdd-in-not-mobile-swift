import LoggerAPI
import Health
import KituraContracts

func initializeNotesRoutes(app: App, repository: NoteRepository) {
    
    app.router.get("/notes") { (respondWith: ([Note]?, RequestError?) -> Void) -> Void in
        respondWith(repository.getAll(), nil)
    }
    
    app.router.post("/notes") { (note: Note, completion: ([Note]?, RequestError?) -> Void) in
        repository.add(item: note)
        completion(repository.getAll(), nil)
    }
}

