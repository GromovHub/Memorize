//
//  TestViewBuilder.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/14/22.
//

import SwiftUI

struct HeaderViewRegular: View {
    let title: String
    let description: String?
    let icon: String?
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.semibold)
            if let description = description {
                Text(description)
                    .font(.callout)
            }
            if let icon = icon {
                Image(systemName: icon)
            }
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 2)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
    
}

struct TestViewBuilder: View {
    var body: some View {
        VStack {
            HeaderViewRegular(title: "HEllo", description: "desc", icon: "cloud")
            HeaderViewRegular(title: "HEllo1", description: nil, icon: nil)
            HeaderViewGeneric(title: "Generic") {
                VStack {
                    Text("hi")
                    Text("hi")
                    Text("hi")
                }
            }
            
            
            CustomHStack{
                Text("hi")
                Text("hi")
                Text("hi")
            }
            HStack {
                Text("hi")
                Text("hi")
                Text("hi")
            }
            Spacer()
        }
    }
}

struct HeaderViewGeneric<Content>: View  where Content: View{
    let title: String
    let content: Content
    
    init(title: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                content
                RoundedRectangle(cornerRadius: 5)
                    .frame(height: 2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }

}

struct CustomHStack<Content:View>: View {
    let content: Content
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        HStack {
            content
        }
    }
}



struct TestViewBuilder_Previews: PreviewProvider {
    static var previews: some View {
//        TestViewBuilder()
        LocalViewBuilder(viewType: .one)
    }
}

struct LocalViewBuilder: View {
    enum ViewType {
        case one, two, three
    }
    
    let viewType: ViewType
    
    var body: some View {
        headerSection
    }
    
    @ViewBuilder private var headerSection: some View {
        switch viewType {
        case .one: viewOne
        case .two: viewTwo
        case .three : viewThree
        }
        
//        if viewType == .one {
//            viewOne
//        } else if viewType == .two {
//            viewTwo
//        } else if viewType == .three {
//            viewThree
//        }
    }
    
    private var viewOne: some View {
            Text("one")
    }
    private var viewTwo: some View {
            Text("two")
    }
    private var viewThree: some View {
            Text("three")
    }
}
