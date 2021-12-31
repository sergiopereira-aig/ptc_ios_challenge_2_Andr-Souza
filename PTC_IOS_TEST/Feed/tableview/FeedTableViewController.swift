//
//  FeedTableViewController.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import UIKit

class FeedTableViewController: UITableViewController {
    let cellId = "cellId"
    var products : [SellerModel] = [SellerModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        createProductArray()
        tableView.register(ProductTableViewCell.self, forCellReuseIdentifier: cellId)
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorColor = .clear
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let loadingVC = LoadingViewController()
        loadingVC.modalTransitionStyle = .crossDissolve
        present(loadingVC, animated: true, completion: nil)

    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProductTableViewCell
        let currentLastItem = products[indexPath.row]
        cell.product = currentLastItem
        return cell
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }

    func createProductArray() {
        products.append(SellerModel(typeOfItem: "typeOfItem", status: .recommended, isFollow: true, sellerName: "Seller with a very long name that needs two lines to fit ", productImageName: "productImageName", date: Date()))
        products.append(SellerModel(typeOfItem: "typeOfItem", status: .new, isFollow: true, sellerName: "Seller short name", productImageName: "productImageName", date: Date()))
        products.append(SellerModel(typeOfItem: "typeOfItem", status: .recommended, isFollow: true, sellerName: "Jerseygramm and Brandings Store", productImageName: "productImageName", date: Date()))
        products.append(SellerModel(typeOfItem: "typeOfItem", status: .recommended, isFollow: true, sellerName: "title", productImageName: "productImageName", date: Date()))
        products.append(SellerModel(typeOfItem: "typeOfItem", status: .recommended, isFollow: true, sellerName: "title", productImageName: "productImageName", date: Date()))
    }
}
