//
//  TabBarViewControllerTest.swift
//  PTC_IOS_TESTTests
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

@testable import PTC_IOS_TEST
import XCTest

class TabBarViewControllerTest: XCTestCase {
    var sut: ViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as! ViewController
        UIApplication.shared.keyWindow?.rootViewController = sut
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSetupVCs() throws {
    }
}
