//
//  ViewController.swift
//  HW14
//
//  Created by Виктор Басиев on 01.09.2022.
//

import UIKit

class CompositionViewCell: UICollectionViewCell {

    static let identifier = "CompositionCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

