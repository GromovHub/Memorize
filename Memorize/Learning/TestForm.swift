//
//  TestForm.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/17/22.
//

import SwiftUI

struct TestForm: View {
    @State private var pickerSelection: Int = 0
    @State private var colorsArray = ["Red", "Green", "Blue"]
    @State private var toggleCondition = false
    var body: some View {
        NavigationView{Form{
            Section(header: Text("Choose color")){Picker(selection: $pickerSelection, content: {
                ForEach(0..<3){
                    Text("\(colorsArray[$0])")
                }
            }, label: {Text("Choose color")}).pickerStyle(.segmented)}
            Text("\(pickerSelection)")
            Toggle("Get extra", isOn: $toggleCondition)
            Section{
                Button(action: {}, label: {Text("Save")}).disabled(!toggleCondition)}
        }.navigationTitle(Text("Form"))
            
        }
    }
}

struct TestForm_Previews: PreviewProvider {
    static var previews: some View {
        TestForm()
    }
}
