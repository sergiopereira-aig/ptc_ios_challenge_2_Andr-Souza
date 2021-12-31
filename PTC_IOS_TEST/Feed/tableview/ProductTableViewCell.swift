//
//  ProductTableViewCell.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 29/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    var viewIsVisibleConstraint: NSLayoutYAxisAnchor!
    var viewIsHiddenConstraint: NSLayoutYAxisAnchor!

    var product: SellerModel? {
        didSet {
            status.text = product?.status.rawValue
            status.backgroundColor = product?.status.backgroundColor()
            status.layer.borderColor = status.backgroundColor?.cgColor
            sellerName.text = product?.sellerName
        }
    }
    private let backView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        return view
    }()

    private let status: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .white
        label.textAlignment = .center
        label.layer.cornerRadius = 3
        label.layer.borderWidth = -3
        label.layer.masksToBounds = true

        label.sizeToFit()
        return label
    }()

    private let followButton: UIButton = {
        let button = UIButton()
        button.setTitle("FOLLOW", for: .normal)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 0.964, green: 0.543, blue: 0.121, alpha: 1.00)
        button.setTitleColor(UIColor(red: 0.998, green: 0.988, blue: 0.975, alpha: 1.00), for: .normal)
        return button
    }()

    private let sellerName : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 2
        return label
    }()

    private let productDescriptionLabel : UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.numberOfLines = 0
        return lbl
    }()

    private let productImage1 : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "Camera"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()

    private let productImage2 : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "Camera"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
        return imgView
    }()

    private let seeAllImage : UIImageView = {
        let imgView = UIImageView(image: #imageLiteral(resourceName: "Camera"))
        imgView.contentMode = .scaleAspectFit
        imgView.clipsToBounds = true
//        let label = UILabel()
//        label.text = "SEE ALL"
//        label.backgroundColor = .brown
//        label.textColor = .white
//        imgView.addSubview(label)
//
//        label.centerXAnchor.constraint(equalTo: imgView.centerXAnchor).isActive = true
//        label.centerYAnchor.constraint(equalTo: imgView.centerYAnchor).isActive = true

        return imgView
    }()

    private let dateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.text = "02-07-1993"
        label.textColor = .black
        return label
    }()

    private let shareButton: UIButton = {
        let button = UIButton()
        let color: UIColor = .orange
        button.setTitle("SHARE", for: .normal)
        let imageIcon = UIImage(systemName: "square.and.arrow.up")?.withTintColor(color,
                                                                                  renderingMode: .alwaysOriginal)
        button.setImage(imageIcon, for: .normal)
        button.setTitleColor(color, for: .normal)
        button.titleLabel?.font =  UIFont.boldSystemFont(ofSize: 12)
//        button.titleEdgeInsets.left = 10
        return button
    }()

    private let extraContent: UILabel = {
        let label = UILabel()
        label.text = "Just in! New items from Jerseygramm and Brandings available. Check them out!"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .left
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 4
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor(red: 0.957, green: 0.957, blue: 0.957, alpha: 1.00)
        addSubview(backView)
        addSubview(followButton)
        addSubview(status)
        addSubview(sellerName)

        backView.anchor(top: topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 6, paddingLeft: 15, paddingBottom: 6, paddingRight: 15, width: 0, height: 0, enableInsets: false)

        followButton.anchor(top: backView.topAnchor, left: nil, bottom: nil, right: backView.rightAnchor, paddingTop: 12, paddingLeft: 5, paddingBottom: 5, paddingRight: 12, width: 90, height: 38, enableInsets: false)
        status.anchor(top: followButton.topAnchor, left: backView.leftAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 12, paddingBottom: 0, paddingRight: 0, width: 0, height: 20, enableInsets: false)
        sellerName.anchor(top: followButton.bottomAnchor, left: status.leftAnchor, bottom: nil, right: followButton.leftAnchor, paddingTop: 3, paddingLeft: 0, paddingBottom: 0, paddingRight: 10, width: 0, height: 0, enableInsets: false)
        status.preferredMaxLayoutWidth = 300

        let separator = UIView(frame: .zero)
        separator.backgroundColor = backgroundColor
        addSubview(separator)

        separator.anchor(top: sellerName.bottomAnchor, left: backView.leftAnchor, bottom: nil, right: backView.rightAnchor, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2, enableInsets: false)

        addSubview(productImage1)
        addSubview(productImage2)
        addSubview(seeAllImage)
        self.layoutSubviews()
        let imageSize = (backView.frame.width)/3


        productImage1.anchor(top: separator.bottomAnchor,
                             left: backView.leftAnchor,
                             bottom: nil,
                             right: nil,
                             paddingTop: 12,
                             paddingLeft: 15,
                             paddingBottom: 12,
                             paddingRight: 0,
                             width: imageSize,
                             height: imageSize,
                             enableInsets: false)

        productImage2.anchor(top: separator.bottomAnchor,
                             left: productImage1.rightAnchor,
                             bottom: nil,
                             right: nil,
                             paddingTop: 12,
                             paddingLeft: 5,
                             paddingBottom: 12,
                             paddingRight: 0,
                             width: imageSize,
                             height: imageSize,
                             enableInsets: false)

        seeAllImage.anchor(top: separator.bottomAnchor,
                           left: nil,
                           bottom: nil,
                           right: backView.rightAnchor,
                           paddingTop: 12,
                           paddingLeft: 5,
                           paddingBottom: 12,
                           paddingRight: 15,
                           width: imageSize,
                           height: imageSize,
                           enableInsets: false)
//
//        if false {
//            let separator2 = UIView(frame: .zero)
//            separator2.backgroundColor = backgroundColor
//            addSubview(separator2)
//
//            separator2.anchor(top: productImage1.bottomAnchor, left: backView.leftAnchor, bottom: nil, right: backView.rightAnchor, paddingTop: 18, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2, enableInsets: false)
//
//            addSubview(extraContent)
//            viewIsVisibleConstraint = separator2.bottomAnchor
//            extraContent.anchor(top: viewIsVisibleConstraint, left: backView.leftAnchor, bottom: nil, right: backView.rightAnchor, paddingTop: 12, paddingLeft: 5, paddingBottom: 0, paddingRight: 5, width: 0, height: 0, enableInsets: false)
//        }
        addSubview(dateLabel)
        dateLabel.anchor(top: productImage1.bottomAnchor, left: backView.leftAnchor, bottom: backView.bottomAnchor, right: nil, paddingTop: 19, paddingLeft: 12, paddingBottom: 12, paddingRight: 0, width: 0, height: 0, enableInsets: false)

        addSubview(shareButton)
        shareButton.anchor(top: nil, left: nil, bottom: nil, right: backView.rightAnchor, paddingTop: 19, paddingLeft: 16, paddingBottom: 12, paddingRight: 5, width: 0, height: 0, enableInsets: false)
        shareButton.centerYAnchor.constraint(equalTo: dateLabel.centerYAnchor).isActive = true

        self.layoutSubviews()

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
