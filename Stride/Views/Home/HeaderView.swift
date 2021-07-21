//
//  HeaderView.swift
//  Stride
//
//  Created by David on 7/15/21.
//

import SwiftUI

struct HeaderView: View {
    
    @EnvironmentObject var viewModel: StrideViewModel
    
    var body: some View {
        
        let homeViewModel = self.viewModel.homeViewModel
        
        ZStack(alignment: .bottom) {
            
            Rectangle()
                .fill(Color.headerBlue)
                .frame(height: 182)
            Rectangle()
                .fill(Color.backgroundBlue)
                .frame(height: 30)
            
            HStack {
                HeaderCurve()
                    .fill(Color.headerBlue)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                
                Spacer()
                
                HeaderCurve()
                    .fill(Color.backgroundBlue)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
                    .rotationEffect(Angle(degrees: 180))
                    .offset(x: 2, y: -50)
            }
            .padding(.bottom, -20)
            
            VStack {
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 27)
                            .foregroundColor(.white)
                            .font(Font.title.weight(.heavy))
                        
                        Text(homeViewModel.headerGreating)
                            .font(.system(size: 24))
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    
                    Image(homeViewModel.headerImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 125)
                        .cornerRadius(30)
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
