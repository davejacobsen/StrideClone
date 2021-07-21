//
//  TaxBillHomeSectionView.swift
//  Stride
//
//  Created by David on 7/13/21.
//

import SwiftUI

struct TaxBillHomeSectionView: View {
    
    @EnvironmentObject var viewModel: StrideViewModel
    @Binding var selection: Int
    
    var body: some View {
        
        HStack {
            Text("Reduce Your Tax Bill")
                .homeHeaderTextStyle()
            Spacer()
        }
        .padding(.horizontal)
        
        taxCard
            .padding(.horizontal)
        
        incomeCard
            .padding(.horizontal)
            .padding(.top, 10)
            .padding(.bottom, 20)
    }
    
    var taxCard: some View {
        
        Button(action: { launchTaxSavingsTab() }, label: {
            
            VStack(alignment: .leading) {
                Text(viewModel.homeViewModel.currentWeek)
                    .padding(.top, 5)
                
                Spacer()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        Text("$\(viewModel.homeViewModel.estimatedTaxSavings)")
                            .font(.system(size: 35))
                            .bold()
                            .padding(.vertical, 1)
                        
                        Text("Estimated Savings")
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(viewModel.homeViewModel.taxDeductions)
                            .fontWeight(.heavy)
                            .font(.system(size: 16))
                            .padding(.vertical, 2)
                        
                        Text("Deductions")
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text(viewModel.homeViewModel.milesDriven)
                            .fontWeight(.heavy)
                            .font(.system(size: 16))
                            .padding(.vertical, 2)
                        Text("Miles Driven")
                    }
                    .padding(.trailing)
                }
                .padding(.bottom, 12)
            }
            .padding()
            .frame(height: 137)
            .background(Color.taxCardBlue)
            .cornerRadiusDefault()
            
        })
        .foregroundColor(.white)
        .font(.system(size: 14))
    }
    
    var incomeCard: some View {
        NavigationLink(
            destination: Text("Add Income"),
            label: {
                HStack {
                    Image("income")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 78)
                        .padding(.top, 5)
                        .padding(.trailing, -8)
                    
                    VStack(alignment: .leading) {
                        Text("Add your income for the week")
                            .font(.system(size: 16))
                            .foregroundColor(.textBlue)
                            .bold()
                            .scaledToFill()
                            .padding(.top, -3)
                            .padding(.bottom, -3)
                        
                        Text("See how much money you should set aside for taxes by adding your income.")
                            .foregroundColor(.textGray)
                            .font(.system(size: 14))
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.textBlue)
                        .font(Font.system(size: 13, weight: .bold))
                        .padding()
                }
                .frame(height: 96)
                .background(Color.white)
                .cornerRadiusDefault()
                .shadow(radius: 6, y: 1.5)
            })
    }
    
    func launchTaxSavingsTab() {
        self.selection = 1
    }
}


