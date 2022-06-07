//
//  TestViewShapeList.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/7/22.
//

import SwiftUI

struct TestViewShapeList: View {
    var body: some View {
        ScrollView {
            VStack{
                ForEach(1...10, id: \.self) { int777 in
                    ItemShape()
            
                }
                
            }
        }
    }
}

struct ItemShape: View {
    @State var isChecked = false
    var artist = "Artist"
    var title = "Title"
    var year = 1970
    var url = "google.com"
    
    var body: some View {
        ZStack {
            Rectangle().padding(.vertical, -3.0).foregroundColor(.yellow)
            HStack{
                //toggle
                Button(action: {isChecked = !isChecked},
                       label: {
                    if isChecked {
                        Image(systemName: "circle.fill").font(.largeTitle)
                    } else {
                        Image(systemName: "circle").font(.largeTitle)
                    }}).padding(.horizontal)
                //name + album in vertical
                Spacer()
                VStack{
                    Text("Artist")
                    Text("Album")
                }.foregroundColor(.black)
                Spacer()
                //year
                Text("1970").foregroundColor(.black)
                //url
                Button(action: {},
                       label: {Image(systemName: "link.circle.fill")
                    .font(.largeTitle)}).padding(.horizontal)
                
            }
        }.aspectRatio(contentMode: .fit)
    }
}




struct testViewShapeList_Previews: PreviewProvider {
    static var previews: some View {
        TestViewShapeList()
    }
}


