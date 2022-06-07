//
//  TestNavigationLink.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/29/22.
//

import SwiftUI

struct Dog: Identifiable {
    var id = UUID()
    var name: String
}
struct DogRaw : View {
    var dog: Dog
    var body: some View {
        Text("\(dog.name)")
    }
}
struct DogView: View {
    var dog: Dog
    var body: some View {
        Text("""
You are in dog view
Current Dog is -> \(dog.name)
""")
    }
}

struct TestNavigationLink: View {
    var body: some View {
        let dog1 = Dog(name: "Pes")
        let dog2 = Dog(name: "Pes1")
        let dogArr = [dog1, dog2]
        NavigationView {
            List(dogArr) { i in
                NavigationLink(destination: DogView(dog: i)
                               , label: {
                    DogRaw(dog: i)
                })
            }.navigationTitle("Choose the dog")
        }
    }
    
}




struct TestNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        TestNavigationLink()
    }
}
