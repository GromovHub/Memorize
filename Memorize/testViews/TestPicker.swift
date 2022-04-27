//
//  TestPicker.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/13/22.
//

import SwiftUI
struct TestPicker: View {
    @State private var select = 0
    var arr = ["red", "white", "blue"]
    var body: some View {
        VStack{
            
            Picker(selection: $select, content: {
                ForEach(0..<2){
                    Text(arr[$0])
                }
            }, label: {Text("chooose")}).pickerStyle(.inline)
                   
//            Picker(selection: $select, content: {
//                ForEach(0..<arr.count){
//                    Text(arr[$0])
//                }
//            }, label: {Text("chooose")}).pickerStyle(.automatic)
//            
//            Picker(selection: $select, content: {
//                ForEach(0..<arr.count){
//                    Text(arr[$0])
//                }
//            }, label: {Text("chooose")}).pickerStyle(.menu)
//            
//            Picker(selection: $select, content: {
//                ForEach(0..<arr.count){
//                    Text(arr[$0])
//                }
//            }, label: {Text("chooose")}).pickerStyle(.segmented)
//            
//            Picker(selection: $select, content: {
//                ForEach(0..<arr.count){
//                    Text(arr[$0])
//                }
//            }, label: {Text("chooose")}).pickerStyle(.wheel)
                   
        Text("selected -> \(select)")
        }
                   }
}

struct TestPicker_Previews: PreviewProvider {
    static var previews: some View {
        TestPicker()
    }
}
