import Foundation

class BlockchainNotesRepository: NotesRepository {
    
    var blockchain: Blockchain
    
    init(blockchain: Blockchain) {
        self.blockchain = blockchain
    }
    
    func getAll() -> [Note] {
        return blockchain.blocks.map({ (block) -> Note in
            return block.data
        })
    }
    
    func add(item: Note) -> Note {
        
        var note = item
        note.createdAt = Date()
        
        let block = Block(data: note)
        blockchain.addBlock(block)
        
        return note
    }
}
