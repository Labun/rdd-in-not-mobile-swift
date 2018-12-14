import Foundation
import Kitura
import LoggerAPI
import Configuration
import CloudEnvironment
import KituraContracts
import Health
import KituraOpenAPI

public let projectPath = ConfigurationManager.BasePath.project.path
public let health = Health()

public class App {
    let router = Router()
    let cloudEnv = CloudEnv()

    public init() throws {
        // Run the metrics initializer
        initializeMetrics(router: router)
    }

    func postInit() throws {
        // Endpoints
        initializeHealthRoutes(app: self)
        
        let blockchain = Blockchain(Block.createGenesisBlock())
        let blockchainNotesRepository = BlockchainNotesRepository(blockchain: blockchain)
        let classificationService = ClassificationService()
        
        initializeNotesRoutes(app: self,
                              notesCtrl: NotesCtrl(notesRepository: blockchainNotesRepository,
                                                    classificationService: classificationService))
        initializeBlocksRoutes(app: self,
                               repository: BlocksRepository(blockchain: blockchain))
        KituraOpenAPI.addEndpoints(to: router)
    }

    public func run() throws {
        try postInit()
        Kitura.addHTTPServer(onPort: cloudEnv.port, with: router)
        Kitura.run()
    }
}
