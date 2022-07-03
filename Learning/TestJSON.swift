//
//  TestJSON.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/4/22.
//

import SwiftUI

struct User1 : Codable{
    var name: String
    var age: Int
}

struct TestJSON: View {
    var encoder = JSONEncoder()
    var decoder = JSONDecoder()
    @State var userName = ""
    @State var userAge = 0
    @State var result: String = "nth"
    @State var encodedValue: Data?
    @State var decodedValue: User1?
    var user = User1(name: "Paul", age: 30)
    
    var body: some View {
        let user2 = User1(name: userName, age: userAge)
        VStack {
            TextField("name", text: $userName)
//            TextField("age", text: $userAge)
            TextField(value: $userAge, formatter: NumberFormatter(), label: {Text("age")})
            
            Button("encode") {
                encoder.outputFormatting = .prettyPrinted
                if let data = try? encoder.encode(user2){
                    encodedValue = data
                    result = String(data: data, encoding: .utf8) ?? "error from encoder"
                }
            }
            Button("decode") {
//                decodedValue = try decoder.decode(User1, from: encodedValue)
              do {  if let toData = encodedValue {
                  decodedValue = try decoder.decode(User1.self, from: toData)
                  result = decodedValue?.name ?? "unwrapped fail"
                }}
                catch {
                    print("error")
                    result = "error from catch"
                }
            }
            Text("\(result)")
        }.buttonStyle(.bordered)
    }
}

struct TestJSON_Previews: PreviewProvider {
    static var previews: some View {
        TestJSON()
    }
}
