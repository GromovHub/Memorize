//
//  TestNativeUrlImage.swift
//  Memorize
//
//  Created by Vitaly Gromov on 7/10/22.
//

import SwiftUI
fileprivate class ImageViewModel {
    init(){}
    struct DogsApi: Codable {
        let fileSizeBytes: Int
        let url: String
    }
    static let singleton = ImageViewModel()
    func getUiIIageFromData() -> UIImage {
        var clearData: Data = Data()
        URLSession.shared.dataTask(with: URL(string: "https://random.dog/woof.json")!) { data, response, error in
            print(String(decoding: data!, as: UTF8.self))
            do {
                let dogObj = try JSONDecoder().decode(DogsApi.self, from: data!)
                URLSession.shared.dataTask(with: URL(string: dogObj.url)!) { data1, response, error in
                    print(dogObj.url)
                    if let ifsdata = data1 {
                        clearData = ifsdata
                    }
                }.resume()
            } catch {
                print(error)
            }
        }.resume()
        sleep(2)
        guard let returnUIImage = UIImage(data: clearData) else {
            print("invalid image unwrapping")
            return UIImage(systemName: "exclamationmark.triangle.fill")!
        }
        return returnUIImage
    }
}



struct TestNativeUrlImage: View {
    @State var image = ImageViewModel.singleton.getUiIIageFromData()
    var body: some View {
        VStack {
            Image(uiImage: image)
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .scaledToFit()
                Button("Get Dog") {
                    image = ImageViewModel.singleton.getUiIIageFromData()
                }
                .buttonStyle(.borderedProminent)
        }
    
       
        
    }
}

struct TestNativeUrlImage_Previews: PreviewProvider {
    static var previews: some View {
        TestNativeUrlImage()
    }
}
