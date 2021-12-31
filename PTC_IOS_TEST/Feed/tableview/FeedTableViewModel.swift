//
//  FeedTableViewModel.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 31/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import Foundation


class FeedTableViewModel: NSObject {
    private var apiService: ApiService!

    override init() {
        super.init()
        self.apiService = ApiService()
        callFuncGetEmptyData()
    }
}

extension FeedTableViewModel {
    func callFuncGetEmptyData() {
        self.apiService.apiToGetData { (empData) in
            print(empData)
        }
    }
}
