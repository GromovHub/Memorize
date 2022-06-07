//
//  TestViewListList.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/9/22.
//

import SwiftUI

struct TestViewListList: View {
    var body: some View {
        List{
            ForEach(1...100, id: \.self) { int777 in
                ItemShape()}
        }
    }
}






struct testViewListList_Previews: PreviewProvider {
    static var previews: some View {
        TestViewListList()
    }
}
