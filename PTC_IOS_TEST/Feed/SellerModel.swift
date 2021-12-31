//
//  SellerModel.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import Foundation
import UIKit

struct SellerModel {
    var typeOfItem: String
    var status: Status
    var isFollow: Bool
    var sellerName: String
    var productImageName: String
    var date: Date
}

enum Status: String {
    case recommended = "RECOMMENDED SELLER"
    case new = "NEW ARRIVALS"

    func backgroundColor() -> UIColor {
        switch self {
        case .new:
            return UIColor(red: 0.384, green: 0.805, blue: 0.524, alpha: 1.00)
        case .recommended:
            return UIColor(red: 0.645, green: 0.638, blue: 0.716, alpha: 1.00)
        }
    }
}
