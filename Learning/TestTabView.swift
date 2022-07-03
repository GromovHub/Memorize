//
//  TestTabView.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/16/22.
//

import SwiftUI

struct TestTabView: View {
    @State var selection = 1
    var body: some View {
        TabView(selection: $selection, content: {
            VStack {
                Text("One1 \(selection)")
                Text("One2")
            }.tabItem({
                //Image(systemName: "star")
                Image(systemName: "cloud")
                Text("One \(selection)")
            })
            .tag(1)
            
            VStack {
                Text("One3 \(selection)")
                Text("One4")
                
            }.tabItem {
                Label("Two", systemImage: "50.circle")
            }.tag(2)
        }).tabViewStyle(.automatic)
    }
}

struct TestTabView_Previews: PreviewProvider {
    static var previews: some View {
        TestTabView()
    }
}
