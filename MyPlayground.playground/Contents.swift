import Foundation


let ipURL = URL(string: "https://api.ipify.org?format=json")
let itunesURL = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song")
let session = URLSession(configuration: .default)
let task = session.dataTask(with: itunesURL!) { data, urlResponse, error in
    print(String(decoding: data!, as: UTF8.self))
//    print(urlResponse!)
//    print(error ?? "error nil")
}
task.resume()

let task2 = URLSession.shared.dataTask(with: URL(string: "https://v2.jokeapi.dev/joke/Any?safe-mode")!) { data, response, error in
    print(String(decoding: data!, as: UTF8.self))
}.resume()

let task3: Void = URLSession.shared.dataTask(with: URL(string: "https://random.dog/woof.json")!) { print(String(decoding: $0!, as: UTF8.self));$1!;$2!}.resume()


