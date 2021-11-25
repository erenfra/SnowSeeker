//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Renato Oliveira Fraga on 11/24/21.
//

import SwiftUI

class Favorites: ObservableObject {
    private var resorts: Set<String>
    private let saveKey = "Favorities"
    
    init() {
        // load our saved data
        
        self.resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        objectWillChange.send()
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        objectWillChange.send()
        resorts.remove(resort.id)
        save()
    }
    
    func save() {
        
    }
    
}
