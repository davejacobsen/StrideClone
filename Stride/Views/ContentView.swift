//
//  ContentView.swift
//  Stride
//
//  Created by David on 7/13/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: StrideViewModel
    
    // Allows certain actions to launch different tabs such as the FollowView launching the Leaberboard tab
    @State private var selectedTab = 0
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            
            HomeView(selection: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            TaxSavingsView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Tax Savings")
                }
                .tag(1)
            
            AddView()
                .tabItem {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)     
                }
                .tag(2)
            
            BenefitsView()
                .tabItem {
                    Image(systemName: "folder.fill.badge.person.crop")
                    Text("Benefits")
                }
                .tag(3)
            
            DealsView()
                .tabItem {
                    Image(systemName: "tag.fill")
                    Text("Deals")
                }
                .tag(4)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
