//
//  TestNavigationView.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/14/22.
//

import SwiftUI

struct Title: Identifiable {
    
    
    var name: String
    var id = UUID()
}

struct TitleView: View {
    var item: Title
    var body: some View{
        VStack(alignment: .center, spacing: 20) {
            Text("🦊")
            Text("\(item.name)\n\(item.id)").lineLimit(2)
        }
    }
}

struct TestNavigationView: View {
    func printList(arr: [Title]){
        for i in arr {
            print(i.name)
            
        }
    }
    static var x1 = Title(name: "x1")
    static var x2 = Title(name: "x2")
    static var x3 = Title(name: "x3")
    static var x4 = Title(name: "x4")
    static var x5 = Title(name: "x5")
    @State var titleArray = [x1,x2,x3,x4,x5]
    @State var sheetFlag = false
    var body: some View{
        NavigationView {
            VStack{
                List {
                    Section(header: Text("Fox"))
                    {
                        ForEach(titleArray){ item in
                        TitleView(item: item)
                        
                    }
                    .onDelete { IndexSet in
                        titleArray.remove(atOffsets: IndexSet)
                    }
                    .onMove { from, to in
                        titleArray.move(fromOffsets: from, toOffset: to)
                    }}.textCase(.lowercase).headerProminence(.standard)

                }.listStyle(.automatic)
                
                Button(action: {
                    printList(arr: titleArray)
                    print("---")
                }, label: {Text("Show array")})
                
            }
            .sheet(isPresented: $sheetFlag, content: {Text("inside sheet") })
            .toolbar {
//                EditButton()
                Button("New Game", action: {
                    sheetFlag.toggle()
                })
                
            }
            
        }
    }
    
}


struct TestNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigationView()
    }
}
