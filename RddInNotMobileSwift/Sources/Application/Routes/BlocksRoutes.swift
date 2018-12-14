import LoggerAPI
import Health
import KituraContracts

func initializeBlocksRoutes(app: App, repository: BlocksRepository) {
    
    app.router.get("/blocks") { (respondWith: ([Block]?, RequestError?) -> Void) -> Void in
        respondWith(repository.getAll(), nil)
    }
}
