//
//  SwiftUIView.swift
//  
//
//  Created by Bryanza Novirahman on 19/06/22.
//

import SwiftUI

struct NotesView: View {
    @ObservedObject var myNotes: NotesModel
    @State var searchString = ""
    @State var newFolderName  = ""
    @State var showingPopOver = false
    var body: some View {
        ZStack {
            NavigationView {
                List {
                    TextField("Search", text: $searchString)
                    Section(header: Text("On My Device")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.black)) {
                            if myNotes.folders.count > 0 {
                                FolderCell(name: "All on My Device")
                            }
                            FolderCell(name: "Notes")
                            ForEach(myNotes.folders){ folder in
                                FolderCell(name: folder.name)
                        }
                            .onDelete(perform: { indexSet in
                                myNotes.folders.remove(atOffsets: indexSet)
                            })
                    }
                        .textCase(nil)
                }
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("Notes")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        EditButton()
                    }
                    ToolbarItemGroup(placement: .bottomBar) {
                        Image(systemName: "folder.badge.plus")
                            .onTapGesture {
                                showingPopOver.toggle()
                            }
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
            if showingPopOver {
                CreateNewFolder($showingPopOver, with: myNotes)
            }
        }
    }
}

struct FolderCell: View {
    var name: String
    var body: some View {
        HStack {
            Image(systemName: "folder")
            Text(name)
        }
    }
}

struct CreateNewFolder: View {
    @ObservedObject var myNotes: NotesModel
    @Binding var showingPopover: Bool
    
    @State var newFolderName = ""
    
    init(_ showingPopover: Binding<Bool>, with myNotes: NotesModel) {
        self._showingPopover = showingPopover
        self.myNotes = myNotes
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                RoundedRectangle(cornerRadius: 7)
                    .fill(Color(.systemGray4))
                    .frame(width: geo.size.width * 0.70, height: geo.size.width * 0.40, alignment: .center)
                VStack {
                    Text("New folder")
                        .font(.headline)
                    Text("Enter a name for this folder")
                        .font(.subheadline)
                    TextField("Name", text: $newFolderName)
                        .frame(width: 200, height: 10)
                        .background(Color(.white))
                        .padding()
                        .cornerRadius(7)
                    Spacer()
                    Color.gray.frame(width: 200, height: CGFloat(1))
                    HStack {
                        Button(action: {print("cancel")}) {
                            Text("Cancel")
                                .frame(maxWidth: .infinity)
                        }
                        Button(action:{
                            myNotes.folders.append(Folder(name: newFolderName))
                            showingPopover.toggle()
                        }) {
                            Text("Save")
                                .frame(maxWidth: .infinity)
                        }
                    }
                }
                .frame(width: geo.size.width * 0.70, height: geo.size.width * 0.35)
            }
            .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
        }
    }
}

struct NotesView_Previews: PreviewProvider {
    static var previews: some View {
        let testNotes = NotesModel()
        testNotes.folders = testFolders
        return NotesView(myNotes: testNotes)
    }
}
