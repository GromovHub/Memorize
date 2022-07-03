//
//  TestAsyncImage.swift
//  Memorize
//
//  Created by Vitaly Gromov on 7/3/22.
//

import SwiftUI

struct TestAsyncImage: View {
    var body: some View {
//        AsyncImage(url: URL(string: "https://random.dog/2a6dfe0a-db12-4cac-a6c7-33cf45503939.jpg")!)
        AsyncImage(url: URL(string: "https://random.dog/2a6dfe0a-db12-4cac-a6c7-33cf45503939.jpg")!, scale: 1)
    }
}

struct TestAsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        TestAsyncImage()
    }
}
