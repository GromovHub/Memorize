//
//  TestSPAlert.swift
//  Memorize
//
//  Created by Vitaly Gromov on 6/17/22.
//

import SwiftUI
import SPAlert

struct TestSPAlert: View {
    @State private var flag = false
    @State private var color = Color.blue
    var body: some View {
//            Button("Test") {
//                flag.toggle()
//            }
//            .buttonStyle(.bordered)
//            .foregroundColor(color)
//            .SPAlert(isPresent: $flag, message: "OMG", duration: 2, dismissOnTap: true, haptic: .success) {
//                color = Color.green
//            }
        Button("Show alert") {
            flag = true
        }.SPAlert(
            isPresent: $flag,
            title: "Alert title",
            message: "Alert message",
            duration: 2.0,
            dismissOnTap: false,
            preset: .custom(UIImage(systemName: "heart")!),
            haptic: .success,
            layout: .init(),
            completion: {
                print("Alert is destory")
            })
    }
}

struct TestSPAlert_Previews: PreviewProvider {
    static var previews: some View {
        TestSPAlert().preferredColorScheme(.dark)
    }
}
