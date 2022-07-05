import Foundation
type(of: URLSession.shared.dataTask(with: URL(string: "https://v2.jokeapi.dev/joke/Any?safe-mode")!){ data, response, error in
    print(String(decoding: data!, as: UTF8.self))
}.resume())
