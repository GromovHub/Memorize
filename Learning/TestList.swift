//
//  TestList.swift
//  Memorize
//
//  Created by Vitaly Gromov on 4/14/22.
//

import SwiftUI


struct MyArtist: View  {
    var name: String
    var body: some View {
        Text("Artist -> \(name)")

    }
}

struct Cars: Identifiable, View {
    var carName: String
    var id = UUID()
    var body: some View {
        Text("Car -> \(carName)\nid -> \(id)")
    }
    
}

//struct CarsView: View {
//    var obj: Cars
//    var body: some View {
//        Text("Car -> \(obj.carName)\nid -> \(obj.id)")
//    }
//}


struct TestList: View {
    var body: some View {
        let car1 = Cars(carName: "Ferrari")
        let car2 = Cars(carName: "Audi")
        let car3 = Cars(carName: "Ford")
        let arr: Array<Cars> = [car1, car2, car3]
//        List{
//            ForEach(0..<10) {
//                Cars(carName: "\($0)")
//            }
        //}
            
        List {
            Section(header: Text("hello"), content: {
                ForEach(arr){$0}
            })
            //.listRowBackground(Color.red)
        }.listStyle(.sidebar)
        
//                List(arr) {car in
//                    //CarsView(obj: $0)
//                Section(content: {car}, header: {Text("header")}) {
//                    Text("footer")
//                }
                //car
                
//            }
        
        
    }
}






struct TestList_Previews: PreviewProvider {
    static var previews: some View {
        TestList()
    }
}
