import LoggerAPI
import Health
import KituraContracts

func initializeNotesRoutes(app: App, notesCtrl: NotesCtrl) {
    
    app.router.get("/notes") { (respondWith: ([Note]?, RequestError?) -> Void) -> Void in
        respondWith(notesCtrl.getAll(), nil)
    }
    
    app.router.post("/notes") { (note: Note, completion: (Note?, RequestError?) -> Void) in
        completion(notesCtrl.add(item: note), nil)
    }
}

