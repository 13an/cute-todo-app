//
//  TaskDetailView.swift
//  CuteTodoApp
//
//  Created by 13an on 2023/07/14.
//

import SwiftUI

struct TaskDetailView: View {
    @EnvironmentObject var taskModel: TaskModel
    var task: Task
    
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 16) {
            Text(task.title)
                .matchedGeometryEffect(id: "\(task.id)-title", in: namespace)
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(task.dueDate)
                .matchedGeometryEffect(id: "dueDate", in: namespace)
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
        }
        .padding(24)
        .background(
            Color.gray.matchedGeometryEffect(id: "backgroundColor", in: namespace)
        )
        .frame(maxWidth: .infinity, maxHeight: 320, alignment: .bottom).matchedGeometryEffect(id: "Position", in: namespace)
        .cornerRadius(24).matchedGeometryEffect(id: "Radius", in: namespace)
    }
}

struct TaskDetailView_Previews: PreviewProvider {
    static let taskModel = TaskModel()
    @Namespace static var namespace
    
    static var previews: some View {
        TaskDetailView(task: taskModel.tasks[0], namespace: namespace, show: .constant(true))
            .environmentObject(taskModel)
    }
}
