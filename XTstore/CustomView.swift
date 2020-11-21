//
//  CustomView.swift
//  XTstore
//
//  Created by admin on 11/19/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class CustomView: UIView {
    lazy var lbl: UILabel = {
        let lbls = UILabel()
        return lbls
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupText()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupText(){
        addSubview(lbl)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        lbl.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        
    }
}
