import Foundation

class BlocksRepository {
    
    var blockchain: Blockchain
    
    init(blockchain: Blockchain) {
        self.blockchain = blockchain
    }
    
    func getAll() -> [Block] {
        return blockchain.blocks
    }
}
