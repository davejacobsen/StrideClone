//
//  HomeView.swift
//  Stride
//
//  Created by David on 7/13/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var viewModel: StrideViewModel
    
    // Used to programatically navigate to a tab without tapping on a tab, such as the FollowView launching the leaderboard tab
    @Binding var selection: Int
    
    var body: some View {
        
        NavigationView {
            ScrollView(showsIndicators: false) {
                
                HeaderView()
                
                TaxBillHomeSectionView(selection: $selection)
                
                BenefitsSpotlightView()
                    .padding(.top)
                
                HomeDealsView()
                    .padding(.bottom, 83)
                    .padding(.top, 20)
                
            }
            .ignoresSafeArea()
            .navigationBarHidden(true)
            .background(Color.backgroundBlue)
        }
        .ignoresSafeArea()
    }
}
