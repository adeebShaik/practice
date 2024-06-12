//
//  initer.swift
//  practice
//
//  Created by Adeeb Shaik on 6/12/24.
//

import SwiftUI

import SwiftUI

class ContentViewModel: ObservableObject {
    init(){
        print("Content view back")
    }
    deinit {
        print("ContentViewModel is being dalloc.")
        // Perform cleanup here
    }
}

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        Text("THIS IS CONTent view!")
            .onDisappear {
                // Additional cleanup if needed
            }
    }
}

// Example usage in a parent view or scene
struct ParentView: View {
    @State private var showContent = true
    
    var body: some View {
        VStack {
            if showContent {
                ContentView()
            } else {
                Text("Another View")
            }
            
            Button("Toggle Content") {
                self.showContent.toggle()
            }
        }
    }
}
 
#Preview {
    ParentView()
}

// can do the same thing with .Disappear

//import SwiftUI
//
//struct ContentView__: View {
//    var body: some View {
//        Text("THis is content View")
//            .onDisappear {
//                print("ContentView is being deallocated.")
//                // Perform cleanup or deallocation here if necessary
//            }
//            .onAppear{
//                print("Content view back")
//            }
//    }
//}
//
//// Example usage in a parent view or scene
//struct ParentView_: View {
//    @State private var showContent = true
//    
//    var body: some View {
//        VStack {
//            if showContent {
//                ContentView()
//            } else {
//                Text("Another View")
//            }
//            
//            Button("Toggle Content") {
//                self.showContent.toggle()
//            }
//        }
//    }
//}
//
//#Preview {
//    ParentView_()
//}
//
