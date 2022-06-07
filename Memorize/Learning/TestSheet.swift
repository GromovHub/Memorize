//
//  TestSheet.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/30/22.
//

import SwiftUI

struct SheetView: View {
    var body: some View {
        Text("You are in sheet")
    }
}

struct TestSheet: View {
    @State private var sheetFlag = false
    var body: some View {
        Button("Click", action: {
            sheetFlag.toggle()
        }).sheet(isPresented: $sheetFlag, content: {
            SheetView()
            Text("inside sheet") 
        })
    }
}

struct TestSheet_Previews: PreviewProvider {
    static var previews: some View {
        TestSheet()
    }
}
