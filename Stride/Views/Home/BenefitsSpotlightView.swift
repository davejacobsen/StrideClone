//
//  BenefitsSpotlightView.swift
//  Stride
//
//  Created by David on 7/13/21.
//

import SwiftUI

struct BenefitsSpotlightView: View {
    
    @EnvironmentObject var viewModel: StrideViewModel
    
    var body: some View {
        
        let homeViewModel = self.viewModel.homeViewModel
        
        VStack(alignment: .leading) {
            
            Text("Benefits Spotlight")
                .homeHeaderTextStyle()
                .padding(.leading)
                .padding(.bottom, -3)
            
            ScrollView(.horizontal) {
                
                HStack(spacing: -18) {
                    ForEach(homeViewModel.benefitSpotlights) { benefit in
                        
                        Link(destination: URL(string: benefit.urlString)!, label: {
                            BenefitSpotlightCard(benefit: benefit)
                        })
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
    }
}

struct BenefitSpotlightCard: View {
    
    let benefit: BenefitSpotlight
    
    var body: some View {
        HStack {
            benefit.image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 150)
                .padding(.trailing, -4)
            
            VStack(alignment: .leading) {
                Text(benefit.title)
                    .foregroundColor(.textBlue)
                    .font(.system(size: 17))
                    .fontWeight(.medium)
                    .padding(.top, 17)
                    .padding(.bottom, 5)
                Text(benefit.subtitle)
                    .foregroundColor(.textGray)
                    .font(.system(size: 15))
                
                Spacer()
                HStack {
                    Spacer()
                    Text("Learn more")
                        .foregroundColor(.textBlue)
                        .fontWeight(.semibold)
                        .font(.system(size: 14))
                        .padding(.trailing, -3)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.textBlue)
                        .font(Font.system(size: 13, weight: .bold))
                    
                }
                .padding(12)
            }
        }
        .frame(width: 350, height: 160)
        .background(Color.white)
        .cornerRadiusDefault()
        .shadow(radius: 6, y: 1.5)
        .padding()
    }
}

struct BenefitsSpotlightView_Previews: PreviewProvider {
    static var previews: some View {
        BenefitsSpotlightView()
    }
}
