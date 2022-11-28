//
//  TaskView.swift
//  Due
//
//  Created by Dragomir Turcanu on 29.11.2022.
//

import SwiftUI

struct TaskView: View {
    var task: Task
    
    @State
    private var isDone: Bool;
    
    init(task: Task) {
        self.task = task
        self.isDone = task.isDone
    }
    
    var body: some View {
        Toggle(task.content, isOn: $isDone)
            .toggleStyle(.checkbox)
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: Task(content: "my first task", isDone: false))
    }
}
