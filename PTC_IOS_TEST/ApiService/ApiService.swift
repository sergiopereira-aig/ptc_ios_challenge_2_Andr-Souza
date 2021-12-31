//
//  ApiService.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 31/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import UIKit

protocol ApiServiceProtocol {
    func apiToGetData(completion : @escaping (SellerModel) -> ())
}

class ApiService {
    #warning("Implement conection to the server")
}

extension ApiService: ApiServiceProtocol {
    func apiToGetData(completion : @escaping (SellerModel) -> ()) {
        completion( SellerModel(typeOfItem: "typeOfItem",
                           status: .recommended,
                           isFollow: true,
                           sellerName: "title",
                           productImageName: "productImageName",
                           date: Date())
                    )
    }
}


