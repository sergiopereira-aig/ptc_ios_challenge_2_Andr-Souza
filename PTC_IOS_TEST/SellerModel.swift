//
//  SellerModel.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import Foundation

struct SellerModel: Codable {
    var status: String
    var isFollow: Bool
    var title: String
    var image: String
    var date: Date
}
