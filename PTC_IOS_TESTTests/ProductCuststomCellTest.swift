//
//  ProductCuststomCellTest.swift
//  PTC_IOS_TESTTests
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

@testable import PTC_IOS_TEST
import XCTest

class ProductCuststomCellTest: XCTestCase {
    var tableView: UITableView!
    private var dataSource: TableViewDataSource!
    private var delegate: TableViewDelegate!

    func makeSut() -> ProductTableViewCell {
        
    }

    override func setUpWithError() throws {
        tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 200, height: 400), style: .plain)
        let itemXib = UINib.init(nibName: "ItemTableViewCell",
                                 bundle: nil)
        tableView.register(itemXib,
                           forCellReuseIdentifier: "itemCell")
        dataSource = TableViewDataSource()
        delegate = TableViewDelegate()
        tableView.delegate = delegate
        tableView.dataSource = dataSource

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

extension TestItemTableViewCell {

    func createCell(indexPath: IndexPath) -> ItemTableViewCell {

        let cell = dataSource.tableView(tableView, cellForRowAt: indexPath) as! ItemTableViewCell
        XCTAssertNotNil(cell)

        let view = cell.contentView
        XCTAssertNotNil(view)

        return cell
    }
}

private class TableViewDataSource: NSObject, UITableViewDataSource {

    var items = [Item]()

    override init() {
        super.init()

        // Initialize model, i.e. create&add object in items.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "itemCell",
                                                 for: indexPath)
        return cell
    }
}

private class TableViewDelegate: NSObject, UITableViewDelegate {

}
