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
    func loadData() async {
        guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song")
        else {
            print("Invalid URL")
            return
        }
        do {
            let (data1, _) = try await URLSession.shared.data(from: url)
            if let decoderResponse = try? JSONDecoder().decode(Response.self, from: data1) {
                results = decoderResponse.results
            }
        } catch {
            print("Invalid data")
        }
    }
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                Text(item.collectionName)
            }
        }
        .task {
            await loadData()
        }
    }
}
struct TestURLSession_Previews: PreviewProvider {
    static var previews: some View {
        TestURLSession()
            .preferredColorScheme(.light)
            
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


