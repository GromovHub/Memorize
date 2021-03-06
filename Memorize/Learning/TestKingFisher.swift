//
//  TestKingFisher.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/3/22.
//

import SwiftUI
import Kingfisher
import Accelerate

struct TestKingFisher: View {
    var body: some View {
        
        KingFisher(url: "https://www.reuters.com/resizer/XyfVaQXypAUACEkTdPkHY5Jrlh8=/1200x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/XIOMNCVGW5KJHBT4MZRKGGIA6U.jpg")
        
            
    }
   
    @ViewBuilder
    private func KingFisher(url: String) -> KFImage {
        KFImage(URL(string: url)
        )
      
    }
    
}

struct TestKingFisher_Previews: PreviewProvider {
    static var previews: some View {
        TestKingFisher()
    }
}
