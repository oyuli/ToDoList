//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/14/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                
                Button {
                    // animation
                    withAnimation {
                        showNewTask = true
                    }
                    
                    
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
                // close button
                
            }
        }
        .padding()
        Spacer()
        List {
            ForEach(toDos) { toDoItem in Text(toDoItem.title)
                
            }
        }
        
        if showNewTask {
            NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
        }
    }
}

#Preview {
    ContentView()
}
