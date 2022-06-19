//
//  File.swift
//  
//
//  Created by Bryanza Novirahman on 19/06/22.
//

import Foundation

class NotesModel: ObservableObject {
    @Published var folders = [Folder]()
}

struct Folder : Identifiable {
    var id = UUID()
    
    var name: String
}

var testFolders = [
    Folder(name: "Personal"),
    Folder(name: "Work")
]
