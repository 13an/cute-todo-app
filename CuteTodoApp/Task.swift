//
//  TaskData.swift
//  CuteTodoApp
//
//  Created by 13an on 2023/07/18.
//

import SwiftUI

struct Task: Identifiable, Hashable {
    let id: Int
    let title: String
    let dueDate: String
}

class TaskModel: ObservableObject {
    @Published var tasks = [
        Task(id: 1, title: "Gym", dueDate: "2023-07-18"),
        Task(id: 2, title: "Sing", dueDate: "2023-07-18"),
        Task(id: 3, title: "Running", dueDate: "2023-07-18"),
        Task(id: 4, title: "Great Design", dueDate: "2023-07-18"),
        Task(id: 5, title: "Write Code", dueDate: "2023-07-18"),
        Task(id: 6, title: "Vitamin C", dueDate: "2023-07-18"),
        Task(id: 7, title: "Washing Clothes", dueDate: "2023-07-18"),
    ]
}
