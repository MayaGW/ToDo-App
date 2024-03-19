//
//  AddToDoView.swift
//  ToDo App
//
//  Created by Maya Ghamloush on 19/03/2024.
//

import SwiftUI

struct AddToDoView: View {
    //MARK: - PROPERTIES
    @Environment(\.presentationMode) private var presentationMode
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    let priorities =  ["High", "Normal", "Low"]
    
    //MARK: - BODY
    var body: some View {
        
        
        NavigationView{
            VStack {
                Form{
                    //MARK: - TODO NAME
                 TextField("Todo", text: $name)
                    //MARK: - TODO PRIORITY
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id:\.self){
                            Text($0)
                        }
                    }//PICKER
                    .pickerStyle(SegmentedPickerStyle())
                    //MARK: - SAVE BUTTON
                    
                    Button(action: {
                        print("Save button pressed")
                    }, label: {
                        Text("Save")
                    })
                }//:FORM
                Spacer()
            }//:VSTACK
            .navigationBarTitle("New Todo", displayMode: .inline)
            .navigationBarItems(trailing:
             Button(action: {
                self.presentationMode.wrappedValue.dismiss()
                //CLOSDE the sheet
            }, label: {
                Image(systemName: "xmark")
            })
            )
        }// : NAVIGATIONVIEW
    }
}
//MARK: - PREVIEW
#Preview {
    AddToDoView()
}
