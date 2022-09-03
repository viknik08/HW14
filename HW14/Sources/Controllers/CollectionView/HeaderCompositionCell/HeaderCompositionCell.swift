//
//  HeaderCompositionCell.swift
//  HW14
//
//  Created by Виктор Басиев on 02.09.2022.
//

import UIKit

class HeaderCompositionCell: UICollectionReusableView {
        
    static let identifier = "HeaderCompositionCell"

//MARK: - Outlets
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Header"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    lazy var rightButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("See All", for: .normal)
        return button
    }()
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Setup
    
    private func setupHierarhy() {
        addSubview(titleLabel)
        addSubview(rightButton)
    }
    private func setupLayout() {
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(self).offset(10)
            make.top.equalTo(self).offset(10)
        }
        rightButton.snp.makeConstraints { make in
            make.right.equalTo(self).inset(10)
            make.top.equalTo(self).offset(10)
        }
    }
}
