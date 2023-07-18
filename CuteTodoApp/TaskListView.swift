//
//  TaskListView.swift
//  CuteTodoApp
//
//  Created by 13an on 2023/07/14.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var taskModel = TaskModel()

    @Namespace var namespace
    @State var show = false
//    @State var selectedTask: TaskData? = nil

    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    Text("Todo")
                        .font(.largeTitle)
//                    if !show {
                        List(taskModel.tasks, id: \.self) { task in
                        TaskListItemView(task: task, namespace: namespace, show: $show)
                                .onTapGesture {
                                    withAnimation {
                                        show.toggle()
                                    }
                                }
                                .padding(16)
                        }
//                    }
                }
//                if show {
//                    TaskDetailView(task: taskModel.tasks, namespace: namespace, show: $show)
//                        .onTapGesture {
//                            withAnimation {
//                                show.toggle()
//                            }
//                        }
//                        .frame(maxHeight: .infinity, alignment: .bottom)
//                }
            }
        }
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

//TaskListItemView(text: texts[index], namespace: namespace, show: $show)
