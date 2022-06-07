//
//  TestOpenSettings.swift
//  Memorize
//
//  Created by Vitaly Gromov on 5/1/22.
//

import SwiftUI

struct TestOpenSettings: View {
    var body: some View {
        Button("show", action: {
            UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)

        })
    }
}

struct TestOpenSettings_Previews: PreviewProvider {
    static var previews: some View {
        TestOpenSettings()
    }
}
