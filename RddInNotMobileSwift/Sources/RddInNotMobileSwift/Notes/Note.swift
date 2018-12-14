//
//  Note.swift
//  Application
//
//  Created by Piotr Labunski on 14/12/2018.
//

struct Note: Codable {
    
    var content: String
    
    init(content: String) {
        self.content = content
    }
}
