//
//  ContentView.swift
//  Due
//
//  Created by Dragomir Turcanu on 29.11.2022.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
            Text("due")
                .font(.largeTitle)
            
            HStack {
                ScrollView {
                    TaskView(task: Task(content: "my first task", isDone: false))
                    TaskView(task: Task(content: "second task", isDone: true))
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
