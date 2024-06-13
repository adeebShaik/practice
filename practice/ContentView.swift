//
//  ContentView.swift
//  practice
//
//  Created by Adeeb Shaik on 6/13/24.
//

//
//  ContentView.swift
//  practice
//
//  Created by Adeeb Shaik on 6/12/24.
//

import SwiftUI

// Example of a simple counter view
struct CounterView: View {
    // @State property wrapper for managing internal state
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
                .font(.headline)
            
            // Button to increment counter value
            Button("Increment") {
                // Updating @State property triggers view update
                counter += 1
            }
            
            // Navigate to another view passing @Binding
            NavigationLink(destination: DetailView(counter: $counter)) {
                Text("Go to Detail View")
            }
        }
        .padding()
    }
}

// Detail view that displays counter value received through @Binding
struct DetailView: View {
    // @Binding property wrapper to receive and bind to a value from another view
    @Binding var counter: Int
    
    var body: some View {
        VStack {
            Text("Edite    d")
            Text("This is a new line")
            Text("Detail View")
                .font(.title)
            Text("Counter: \(counter)")
                .font(.headline)
        }
        .padding()
    }
}

// Commented
struct ContentView_: View {
    var body: some View {
        NavigationView {
            CounterView()
        }
    }
}

#Preview {
    ContentView_()
}
