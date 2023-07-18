//
//  Test.swift
//  CuteTodoApp
//
//  Created by 13an on 2023/07/18.
//
import SwiftUI

struct SampleTask: Identifiable, Hashable {
    let id: Int
    let title: String
    let dueDate: String
}

class SampleTaskModel: ObservableObject {
    @Published var sampleTasks = [
        SampleTask(id: 1, title: "Gym", dueDate: "2023-07-18"),
        SampleTask(id: 2, title: "Sing", dueDate: "2023-07-18"),
        SampleTask(id: 3, title: "Running", dueDate: "2023-07-18"),
        SampleTask(id: 4, title: "Great Design", dueDate: "2023-07-18"),
        SampleTask(id: 5, title: "Write Code", dueDate: "2023-07-18"),
        SampleTask(id: 6, title: "Vitamin C", dueDate: "2023-07-18"),
        SampleTask(id: 7, title: "Washing Clothes", dueDate: "2023-07-18"),
    ]
}

struct SampleTaskListItemView: View {
    let sampleTask: SampleTask
    
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(sampleTask.title)
                .matchedGeometryEffect(id: "title", in: namespace)
                .font(.headline)
            Text("Due Date: \(sampleTask.dueDate)")
                .matchedGeometryEffect(id: "dueDate", in: namespace)
                .font(.subheadline)
        }
        .padding()
    }
}

struct SampleTaskListView: View {
    @ObservedObject var sampleTaskModel = SampleTaskModel()
    
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        NavigationView {
            List(sampleTaskModel.sampleTasks) { sampleTask in
                SampleTaskListItemView(sampleTask: sampleTask, namespace: namespace, show: $show)
            }
            .navigationBarTitle("Tasks")
        }
    }
}

struct SampleContentView: View {
    var body: some View {
        SampleTaskListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SampleContentView()
    }
}
