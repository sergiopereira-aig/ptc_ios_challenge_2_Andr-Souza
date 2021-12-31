//
//  SellerCustomCellViewModel.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import UIKit

class SellerCustomCellViewModel: NSObject {
    private var apiService: ApiService!
    private(set) var empData: SellerModel! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    var bindEmployeeViewModelToController : (() -> ()) = {}

    override init() {
        super.init()
        self.apiService = ApiService()
        callFuncToGetEmpData()
    }

    func callFuncToGetEmpData() {
        self.apiService.apiToGetData { (empData) in
//            self.empData = empData
//            bindEmployeeViewModelToController.sel
        }
    }

   
}
