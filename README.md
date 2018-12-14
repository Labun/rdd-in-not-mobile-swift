# RDD in not-mobile Swift 
One easy tutorial for iOS developers to pimp your CV
> RDD - Resumé Driven Development refers to the practice of choosing hot new technologies for your projects to make your resumé more impressive.
> - https://tra38.github.io/blog/t16-resume-driven-development.html 

### 1. Server-side Swift
kitura getting started guide - https://www.kitura.io/guides/gettingstarted.html
 - `xcode-select --install`
 - download Kitura - macOS App `https://www.kitura.io/app.html`
 - create new app
 - Add small notebook app

```
Get notes
curl -X GET http://localhost:8080/notes | python -m json.tool

Add note
curl -H "Content-Type: application/json" -d '{ "content": "First note"}' http://localhost:8080/notes | python -m json.tool
```

![backend](RXCgnHUy.png)

### 2. GraphQL 
OASGraph getting started guide - http://v4.loopback.io/getting-started-oasgraph.html
 - `npm i -g oasgraph-cli`
 - `http://localhost:3000/openapi` => `openapi.json`
 - Add `"basePath" : "http://localhost:8080\/"`
 - oasgraph openapi.json
 - `http://localhost:3001/graphql`
```
mutation postNotes {
  postNotes(noteInput: {content: "GraphQL is gr8"}) {
    content
  }
}
query notes {
  notes {
    content
  }
}
```

![GraphQL](aSau7Jqi.png)

### 3. Blockchain 
Blockchain Programming in iOS - https://medium.com/@azamsharp/blockchain-programming-in-ios-ffaff9b328cc

> A blockchain, originally block chain, is a growing list of records, called blocks, which are linked using cryptography. Each block contains a cryptographic hash of the previous block, a timestamp, and transaction data
> - https://en.wikipedia.org/wiki/Blockchain

![blockchain_linked_list](http://devhumor.com/content/uploads/images/April2018/blockchain_linked_list.png)

 - Add `Block` class
 - Add `Blockchain` class
 - Add `BlockchainNotesRepository` class
 - Add `BlocksRepository` class 
 - Expose `/blocks` endpoint

```
query blocks {
  blocks {
    index
    dateCreated
    previousHash
    hash
    nonce
    data {
      content
      createdAt
    }
  }
}
```

![Blockchain](KEmMxZLG.png)
