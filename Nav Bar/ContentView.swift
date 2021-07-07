//
//  ContentView.swift
//  Nav Bar
//
//  Created by Vinay Nation on 07/07/21.
//

import SwiftUI

struct ContentView: View {
    @State var data = Array(0..<10)
    
    init() {
      let coloredAppearance = UINavigationBarAppearance()
      coloredAppearance.configureWithOpaqueBackground()
      coloredAppearance.backgroundColor = .systemRed
      coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
      coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

      UINavigationBar.appearance().standardAppearance = coloredAppearance
      UINavigationBar.appearance().compactAppearance = coloredAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance

      UINavigationBar.appearance().tintColor = .white
    }
    
    var body: some View {
        NavigationView {
           Text("Buttons Example")
             .navigationTitle("Title")
             .toolbar {
               ToolbarItem(placement: .navigationBarLeading) {
                 Button(action: {
                   print("Refresh")
                 }) {
                   Label("Send", systemImage: "paperplane.fill")
                 }
               }
               ToolbarItem(placement: .navigationBarTrailing) {
                 Button(action: {
                   print("Refresh")
                 }) {
                   Label("Refresh", systemImage: "arrow.clockwise")
                 }
               }
             }
         }
        
        .toolbar {
          ToolbarItemGroup(placement: .navigationBarLeading) {
            Button(action: {
              print("Send")
            }) {
              Label("Send", systemImage: "paperplane.fill")
            }
          }

          ToolbarItemGroup(placement: .navigationBarTrailing) {
            Button(action: {
              print("Refresh")
            }) {
              Label("Refresh", systemImage: "arrow.clockwise")
            }

            Button(action: {
              print("Edit")
            }) {
              Label("Edit", systemImage: "slider.horizontal.3")
            }
          }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
