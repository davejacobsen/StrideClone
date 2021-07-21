//
//  Models.swift
//  Stride
//
//  Created by David on 7/13/21.
//

import Foundation
import SwiftUI

struct BenefitSpotlight: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let urlString: String
    let image: Image
}

struct HomeOffer: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let cta: String
    let urlString: String
    let image: Image
}

