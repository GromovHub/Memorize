//
//  TestAPIUnsplash.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/26/22.
//

import SwiftUI
import UnsplashPhotoPicker
import UnsplashSwiftUI

struct TestAPIUnsplash: View {
    var body: some View {
        UnsplashRandom(clientId: "1_RusPERzdidJ_akL0iHjgf03x1ivIjhp7algRGIPzM")
    }
}

struct TestAPIUnsplash_Previews: PreviewProvider {
    static var previews: some View {
        TestAPIUnsplash()
    }
}



