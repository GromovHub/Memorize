import Foundation
struct GroceryProduct: Codable {
    var name: String
    var points: Int
    var description: String?
}

let json = """
{
    "name": "Durian",
    "points": 600,
    "description": "A fruit with a distinctive scent."
}
""".data(using: .utf8)!

let decoder = JSONDecoder()
let product = try decoder.decode(GroceryProduct.self, from: json)

print(product.name) // Prints "Durian""

var jokeData: Data?

let task1 = URLSession.shared.dataTask(with: URL(string: "https://v2.jokeapi.dev/joke/Any?safe-mode")!){ data, response, error in
    jokeData = data
    print(String(decoding: data!, as: UTF8.self))
}.resume()

struct Joke: Codable {
    var setup: String
    var delivery: String
}

let joke: Joke = try decoder.decode(Joke.self, from: jokeData!) ?? Joke(setup: "fail", delivery: "fail")
print("""
--------------------joke below----------------
- \(joke.setup)
- \(joke.delivery)
--------------------joke abow-----------------
\(joke.self)
""")
