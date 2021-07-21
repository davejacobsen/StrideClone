//
//  StrideViewModel.swift
//  Stride
//
//  Created by David on 7/13/21.
//

import Foundation
import SwiftUI

class StrideViewModel: ObservableObject {
    
    @Published var homeViewModel = HomeViewModel()
    
    init() {
        
        // Calling in initializer so that the data is only fetched on launch and not multiple times a session
        fetchHomeData()
    }
    
    // Simulated API call
    func fetchHomeData() {
        
        // This greeting just be run on the front end because there are only 3 states(Morning, Afternoon, Evening) but just including it in the main fetch function
        self.homeViewModel.headerGreating = "Good Morning!"
        self.homeViewModel.headerImageName = "sun"
        
        self.homeViewModel.currentWeek = "Jul 12 - 18"
        self.homeViewModel.estimatedTaxSavings = "0.00"
        self.homeViewModel.taxDeductions = "0.00"
        self.homeViewModel.milesDriven = "0.0"
        
        self.homeViewModel.homeOffers = MockData.homeOffers
        self.homeViewModel.benefitSpotlights = MockData.benefitsSpotlight
    }
    
}

class HomeViewModel: ObservableObject {
    var headerGreating = ""
    var headerImageName = ""
    
    var currentWeek = ""
    var estimatedTaxSavings = ""
    var taxDeductions = ""
    var milesDriven = ""
    
    var homeOffers: [HomeOffer] = []
    var benefitSpotlights: [BenefitSpotlight] = []
}

// Simulating pulling data from API and turning it into our model objects
struct MockData {
    
    static let benefitsSpotlight = [
        BenefitSpotlight(title: "Save on Health", subtitle: "You may qualify for health insurance for less than $1/month.", urlString: "https://www.stridehealth.com/health/profile/location/zipcode?utm_source=owned_app&utm_medium=GuideAndroid", image: Image("health")),
        BenefitSpotlight(title: "Save on Dental", subtitle: "Compare your plan with ours - starting at $1/day.", urlString: "https://www.stridehealth.com/get-dental", image: Image("dental")),
        BenefitSpotlight(title: "Save on Vision", subtitle: "Plans start at less than $10/month.", urlString: "https://www.stridehealth.com/vision", image: Image("vision"))
    ]
    
    static let homeOffers = [
        HomeOffer(title: "Injury insurance from $25/month", subtitle: "Get up to $20,000 each time you are injured. Sign up in 90 seconds.", cta: "Get Covered", urlString: "https://www.stridehealth.com/accident?utm_source=owned_app&utm_medium=newsfeed&utm_campaign=just_for_you", image: Image("injury")),
        HomeOffer(title: "Affordable personal loans", subtitle: "Get the funds you need with a personalized loan offer.", cta: "Check Rates", urlString: "https://www.credible.com/personal-loan-prequalification", image: Image("personalLoan")),
        HomeOffer(title: "Save on car insurance", subtitle: "Whatever you drive, start driving down the cost today.", cta: "Get a quote", urlString: "https://purchase.allstate.com/onlineshopping/welcome?cid=OTC-StrideHealth-200401:Quote&campaign=444490000068275", image: Image("car")),
        HomeOffer(title: "Get paid up to 2 days early", subtitle: "Free bank account sign up takes 2 minutes and there are no monthly or overdraft fees!", cta: "Get Started", urlString: "https://www.chime.com/join/stridehealth/", image: Image("getPaid")),
        HomeOffer(title: "Affordable disability policy", subtitle: "Protect your income in case injury or illness prevents you from working.", cta: "Get my quote", urlString: "https://www.meetbreeze.com/disability-insurance/", image: Image("disability"))
    ]
}
