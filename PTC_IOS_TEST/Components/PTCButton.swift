//
//  PTCButton.swift
//  PTC_IOS_TEST
//
//  Created by itsector on 31/12/2021.
//  Copyright © 2021 Jumia. All rights reserved.
//

import Foundation
import UIKit

class PTCButton: UIButton {
    private var viewLine: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        viewLine = UIView()
        setup()
    }

    func setup() {
        setTitleColor(isEnabled ? .gray : .orange, for: .normal)
        backgroundColor = .white

        viewLine.backgroundColor = isEnabled ? .clear : .orange
        addSubview(viewLine)
        viewLine.anchor(top: nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 0, height: 2, enableInsets: false)

    }

    override var isEnabled: Bool {
        didSet {
            let color: UIColor = isEnabled ? .gray : .orange
            setTitleColor(color, for: .normal)
            viewLine.backgroundColor = isEnabled ? .clear : .orange
        }
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
