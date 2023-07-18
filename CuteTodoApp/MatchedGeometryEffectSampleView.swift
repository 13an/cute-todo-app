//
//  MatchedGeometryEffectSampleView.swift
//  CuteTodoApp
//
//  Created by 13an on 2023/07/14.
//

import SwiftUI

struct MatchedGeometryEffectSampleView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                VStack(alignment: .trailing, spacing: 16) {
                    Text("Task Title")
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Due: May 7, 2023")
                        .matchedGeometryEffect(id: "dueDate", in: namespace)
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(24)
                .background(
                    Color.white.matchedGeometryEffect(id: "backgroundColor", in: namespace)
                )
                .padding(24)
                
            } else {
                VStack(alignment: .leading, spacing: 16) {
                    Spacer()
                    Text("Task Title")
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Due: May 7, 2023")
                        .matchedGeometryEffect(id: "dueDate", in: namespace)
                        .font(.footnote)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("this text describes me.")
                }
                .frame(maxHeight: 300)
                .padding(24)
                .background(
                    Color.white.matchedGeometryEffect(id: "backgroundColor", in: namespace)
                )
            }
        }
        .onTapGesture {
            withAnimation {
                show.toggle()
            }
        }
    }
}

struct MatchedGeometryEffectSampleView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectSampleView()
    }
}
