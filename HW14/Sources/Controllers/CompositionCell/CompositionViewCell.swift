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
    
    private let mainImage: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        return label
    }()
    
    private let countLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        return label
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
            make.left.equalTo(self)
        }
        countLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(5)
            make.left.equalTo(self)
        }
    }
    
    func configuration(model: Settings) {
        self.titleLabel.text = model.title
        self.countLabel.text = model.count
        self.mainImage.image = UIImage(named: model.image ?? "")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}

