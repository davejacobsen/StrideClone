//
//  StrideApp.swift
//  Stride
//
//  Created by David on 7/13/21.
//

import SwiftUI

@main
struct StrideApp: App {
    var body: some Scene {
        WindowGroup {
            let viewModel = StrideViewModel()
            ContentView().environmentObject(viewModel)
        }
    }
}
