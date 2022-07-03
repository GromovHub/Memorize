//
//  TestURLSession.swift
//  Memorize
//
//  Created by Vitaly Gromov on 7/3/22.
//

import SwiftUI
//deep
// MARK: View

struct TestURLSession: View {
    @State private var results = [Result]()
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }
    }
}
struct TestURLSession_Previews: PreviewProvider {
    static var previews: some View {
        TestURLSession()
    }
}

// MARK: Model

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}


