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
            .padding()
        }
        
        NavigationLink(destination: ShowExternalImages()) {
          Text("Go Stack images")
            .padding()
        }
        
        NavigationLink(destination: MyTabView()) {
          Text("Go Tab View")
            .padding()
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
      VStack {
        Text("Bicycle for the Mind")
          .font(.title)
          .fontWeight(.thin)
        
        Text("知性の自転車")
          .foregroundColor(Color.red)
          .offset(x: -10, y: 0)
      }
      .padding(.top, 80)
      
      
      VStack {
        Text("春はあけぼの")
        Text("夏は夜")
        Text("秋は夕暮れ")
        Text("冬はつとめて")
      }
      .padding(.top, 20)
      Spacer()
    }
  }
}

struct ShowExternalImages: View {
  private let url01 = "https://images.ctfassets.net/jw97nqftcrrc/4wp97QkMPlQmD7NcpX1ZxD/4ebd7aa59c557026a1d85dd13470a976/hero19.png?fm=webp"
  
  private let url02 = "https://images.ctfassets.net/jw97nqftcrrc/1qWNs86XYFbiAPGBmtq0QR/8f130d86d4886d4d5a299255f8d15b3a/hero11.png?fm=webp"
  
  private let url03 = "https://images.ctfassets.net/jw97nqftcrrc/4vSLqcdKOzSWuDEWiv9F4q/36d2a4f7b6314cb0e3a2186dbe96b217/hero15.png?fm=webp"
  
  var body: some View {
    VStack {
      AsyncImage(url: URL(string: url01)) { response in
        response.image?
          .resizable()
          .aspectRatio(contentMode: .fit)
      }
      
      AsyncImage(url: URL(string: url02)) { response in
        response.image?
          .resizable()
          .aspectRatio(contentMode: .fit)
      }
      
      AsyncImage(url: URL(string: url03)) { response in
        response.image?
          .resizable()
          .aspectRatio(contentMode: .fit)
          .overlay(
            Text("Hello World")
              .font(.title)
              .foregroundColor(Color.white)
              .offset(x: 0, y: 0)
          )
      }
    }
  }
}

struct MyTabView: View {
  @State var selectedTag = 1
  var body: some View {
    TabView(selection: $selectedTag) {
      Text("Tab Content 1").tabItem {
        Text("Tab Label 1").tag(1)
      }
      
      Text("Tab Content 2").tabItem {
        Text("Tab Label 2").tag(2)
      }
      
      Text("Tab Content 3").tabItem {
        Text("Tab Label 4").tag(3)
      }
    }

  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
