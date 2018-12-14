import Foundation

class Blockchain {
    
    private (set) var blocks :[Block] = [Block]()
    
    init(_ genesisBlock :Block) {
        
        addBlock(genesisBlock)
    }
    
    func addBlock(_ block :Block) {
        
        if self.blocks.isEmpty {
            // add the genesis block
            // no previous has was found for the first block
            block.previousHash = "0"
            block.hash = generateHash(for: block)
        } else {
            let previousBlock = getPreviousBlock()
            block.previousHash = previousBlock.hash
            block.index = self.blocks.count
            block.hash = generateHash(for: block)
        }
        
        self.blocks.append(block)
        displayBlock(block)
    }
    
    private func getPreviousBlock() -> Block {
        return self.blocks[self.blocks.count - 1]
    }
    
    
    private func displayBlock(_ block :Block) {
        print("------ Block \(block.index) ---------")
        print("Date Created : \(block.dateCreated) ")
        print("Data : \(block.data) ")
        print("Nonce : \(block.nonce) ")
        print("Previous Hash : \(block.previousHash) ")
        print("Hash : \(block.hash) ")
        
    }
    
    private func generateHash(for block: Block) -> String {
        
        var hash = block.key.sha1
        
        // setting the proof of work.
        // In "00" is good to start since "0000" will take forever and Playground will eventually crash :)
        while(!hash.hasPrefix("00")) {
            block.nonce += 1
            hash = block.key.sha1
            print(hash)
        }
        
        return hash
    }
    
}
