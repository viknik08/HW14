//
//  CompositionTableViewCell.swift
//  HW14
//
//  Created by Виктор Басиев on 02.09.2022.
//

import UIKit

class CompositionTableViewCell: UICollectionViewCell {
    
    static let identifier = "CollectionTableViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
