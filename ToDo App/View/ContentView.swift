//
//  ContentView.swift
//  ToDo App
//
//  Created by Maya Ghamloush on 19/03/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var managedObjectContext

 
    
    
    //MARK: - PROPERTIES
  //  private var items: FetchedResults<Item>
    @State private var showingAddTodoView: Bool = false

//MARK: - BODY
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                Text("Hello word")
            }//:LIST
            .navigationBarTitle("Todo", displayMode: .inline)
            .navigationBarItems(trailing:
             Button(action: {
                self.showingAddTodoView.toggle()
            }, label: {
             Image(systemName: "plus")
                       })//:ADD BUTTON
                .sheet(isPresented: $showingAddTodoView, content: {
                    AddToDoView().environment(\.managedObjectContext,self.managedObjectContext)
                })
            )
        }//NAVIGATION
    }

  

  
}

 
#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
