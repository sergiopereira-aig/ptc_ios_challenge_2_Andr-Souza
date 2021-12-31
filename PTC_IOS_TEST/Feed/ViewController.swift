//
//  ViewController.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.157, green: 0.157, blue: 0.157, alpha: 1.00)
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.barStyle = .black

        self.setupView()
        self.setupNavigationItem()
        presentFeedView()
    }

    private let followingButton: UIButton = {
        let button = PTCButton()
        button.setTitle("Following", for: .normal)
        button.addTarget(self, action: #selector(followinAction), for: .allEvents)
        button.isEnabled = false
        return button
    }()
    
    func presentFeedView(){
        let viewController = FeedTableViewController()
        viewController.willMove(toParent: self)
        viewController.view.frame = viewContent.bounds
        viewContent.addSubview(viewController.view)
        self.addChild(viewController)
        viewController.didMove(toParent: self)
    }

    @objc func followinAction() {
        followingButton.isEnabled = false
        exploreButton.isEnabled = true
    }

    private let exploreButton: UIButton = {
        let button = PTCButton()
        button.setTitle("Explore", for: .normal)
        button.isEnabled = true
        button.addTarget(self, action: #selector(exploreAction), for: .allEvents)
        return button
    }()

    @objc func exploreAction() {
        viewContent.backgroundColor = .black
        followingButton.isEnabled = true
        exploreButton.isEnabled = false

        let loadingVC = LoadingViewController()
        loadingVC.modalTransitionStyle = .crossDissolve
        present(loadingVC, animated: true, completion: nil)
    }

    private let viewContent: UIView = {
        let view = UIView()
        return view
    }()

    func setupView() {
        let guide = view.safeAreaLayoutGuide

        self.view.addSubview(followingButton)
        followingButton.anchor(top: guide.topAnchor, left: self.view.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: guide.layoutFrame.width/2, height: 56, enableInsets: false)

        self.view.addSubview(exploreButton)
        exploreButton.anchor(top: guide.topAnchor, left: nil, bottom: followingButton.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: guide.layoutFrame.width/2, height: 0, enableInsets: false)

        self.view.addSubview(viewContent)
        viewContent.anchor(top: followingButton.bottomAnchor, left: self.view.leftAnchor, bottom: self.view.bottomAnchor, right: self.view.rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 0, enableInsets: false)

    }

    func setupNavigationItem() {
        let config = UIImage.SymbolConfiguration(scale: .medium)
        let magnifyButton = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass",
                                                           withConfiguration: config),
                                            style: .plain,
                                            target: self,
                                            action: #selector(addTapped))
        let cartButton = UIBarButtonItem(image: UIImage(systemName: "cart",
                                                           withConfiguration: config),
                                            style: .plain,
                                            target: self,
                                            action: #selector(addTapped))
        
        self.navigationItem.rightBarButtonItems = [cartButton,
                                              magnifyButton]

    }
    @objc func addTapped() {
        let loadingVC = LoadingViewController()
        loadingVC.modalTransitionStyle = .crossDissolve
        present(loadingVC, animated: true, completion: nil)
    }
}
