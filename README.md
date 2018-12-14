# RDD in not-mobile Swift 
One easy tutorial for iOS developers to pimp your CV
> RDD - Resumé Driven Development refers to the practice of choosing hot new technologies for your projects to make your resumé more impressive.

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

 ![arch diagram](RXCgnHUy.png)
