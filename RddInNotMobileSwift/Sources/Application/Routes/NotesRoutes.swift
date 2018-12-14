import LoggerAPI
import Health
import KituraContracts

func initializeNotesRoutes(app: App, repository: NotesRepository) {
    
    app.router.get("/notes") { (respondWith: ([Note]?, RequestError?) -> Void) -> Void in
        respondWith(repository.getAll(), nil)
    }
    
    app.router.post("/notes") { (note: Note, completion: (Note?, RequestError?) -> Void) in
        completion(repository.add(item: note), nil)
    }
}

