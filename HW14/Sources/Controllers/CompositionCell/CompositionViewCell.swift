//
//  ViewController.swift
//  HW14
//
//  Created by Виктор Басиев on 01.09.2022.
//

import UIKit

class CompositionViewCell: UICollectionViewCell {

    static let identifier = "CompositionCell"
    
//MARK: - Outlets
    lazy var mainImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "person")
        return image
    }()
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.tintColor = .black
        return label
    }()
    lazy var countLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello hello"
        label.tintColor = .black
        return label
    }()
    private let mainStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
//        stack.alignment = .center
        return stack
    }()
    private let bottomStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
//        stack.alignment = .center
//        stack.spacing = 2
        return stack
    }()
    
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Setup

    private func setupHierarhy() {
//        addSubview(mainStack)
//        mainStack.addArrangedSubview(mainImage)
//        mainStack.addArrangedSubview(bottomStack)
//        bottomStack.addArrangedSubview(titleLabel)
//        bottomStack.addArrangedSubview(countLabel)
        addSubview(mainImage)
        addSubview(titleLabel)
        addSubview(countLabel)

    }
    private func setupLayout() {
        mainImage.snp.makeConstraints { make in
            make.top.left.right.bottom.equalTo(self)
        }
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(mainImage.snp.bottom).offset(10)
            make.left.equalTo(self).offset(10)
        }
        countLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.left.equalTo(self).offset(10)
        }
        
//        mainStack.snp.makeConstraints { make in
//            make.width.equalTo(self)
//            make.height.equalTo(self)
//        }
//        titleLabel.snp.makeConstraints { make in
//            make.height.equalTo(50)
//        }
//        countLabel.snp.makeConstraints { make in
//            make.height.equalTo(50)
//        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}

