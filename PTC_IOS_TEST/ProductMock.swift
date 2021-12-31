//
//  ProductMock.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 30/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import Foundation

class ProductMock {
    var product: SellerModel
    init() {
        product = SellerModel(typeOfItem: "RECOMMENDED SELLER",
                              status: .recommended,
                              isFollow: false,
                              sellerName: "Seller with a very long name that needs two lines to fit",
                              productImageName: "Camera", date: Date())
    }
}
