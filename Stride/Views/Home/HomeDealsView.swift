//
//  DealsView.swift
//  Stride
//
//  Created by David on 7/13/21.
//

import SwiftUI

struct HomeDealsView: View {
    
    @EnvironmentObject var viewModel: StrideViewModel
    
    var body: some View {
        
        let homeViewModel = self.viewModel.homeViewModel
        
        VStack(alignment: .leading) {
            
            Text("Just for you")
                .homeHeaderTextStyle()
                .padding(.leading)
                .padding(.bottom, -5)
            
            ScrollView(.horizontal) {
                
                HStack(spacing: -18) {
                    ForEach(homeViewModel.homeOffers) { offer in
                        
                        Link(destination: URL(string: offer.urlString)!, label: {
                            HomeDealCard(offer: offer)
                        })
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color.backgroundBlue)
    }
}

struct HomeDealCard: View {
    
    let offer: HomeOffer
    
    var body: some View {
        VStack {
            offer.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160)
                .padding(.bottom, -9)
            
            VStack(alignment: .leading) {
                Text(offer.title)
                    .foregroundColor(.textGray)
                    .fontWeight(.semibold)
                    .font(.system(size: 16))
                    
                    .padding(.vertical, 3)
                Text(offer.subtitle)
                    .foregroundColor(.textGray)
                    .font(.system(size: 12))
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text(offer.cta)
                        .foregroundColor(.textBlue)
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                        .padding(.trailing, -5)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.textBlue)
                        .font(Font.system(size: 13, weight: .bold))
                }
                .padding(.trailing, 2)
                .padding(.bottom)
            }
            .padding(.horizontal, 11)
        }
        .frame(width: 172, height: 272)
        .background(Color.white)
        .cornerRadiusDefault()
        .shadow(radius: 6, y: 2)
        .padding()
    }
}

struct HomeDealsView_Previews: PreviewProvider {
    static var previews: some View {
        HomeDealsView()
    }
}
