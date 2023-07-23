//
//  ContentView.swift
//  FieldMate
//
//  Created by Takayasu Nasu on 2023-07-20.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      VStack {
        NavigationLink(destination: SubView()) {
          Text("Go SubView!")
            .padding()
        }
        
        NavigationLink(destination: StuckView()) {
          Text("Go Stack view")
        }
      }
    }
  }
}

struct SubView: View {
  var body: some View {
    Text("Suv view")
  }
}

struct StuckView: View {
  var body: some View {
    VStack {
      Text("Stack 01")
      Text("Stack 02")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
