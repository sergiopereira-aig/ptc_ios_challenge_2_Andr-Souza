//
//  ApiService.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 31/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import UIKit

protocol ApiServiceProtocol {
    func apiToGetData(completion : @escaping ([SellerModel]) -> ())
}

class ApiService {
    #warning("Implement conection to the server")
}

extension ApiService: ApiServiceProtocol {
    func apiToGetData(completion : @escaping ([SellerModel]) -> ()) {
            var products = [SellerModel]()
            products.append(SellerModel(typeOfItem: "typeOfItem", status: .recommended, isFollow: false, sellerName: "Seller with a very long name that needs two lines to fit ", productImageName: "productImageName", date: Date()))
            products.append(SellerModel(typeOfItem: "typeOfItem", status: .new, isFollow: true, sellerName: "Seller short name", productImageName: "productImageName", date: Date()))
            products.append(SellerModel(typeOfItem: "typeOfItem", status: .recommended, isFollow: false, sellerName: "Jerseygramm and Brandings Store", productImageName: "productImageName", date: Date()))
            products.append(SellerModel(typeOfItem: "typeOfItem", status: .recommended, isFollow: false, sellerName: "title", productImageName: "productImageName", date: Date()))
            products.append(SellerModel(typeOfItem: "typeOfItem", status: .recommended, isFollow: false, sellerName: "title", productImageName: "productImageName", date: Date()))
        completion(products)
    }
}


