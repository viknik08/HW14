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
    private let view: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Header"
        label.tintColor = .black
        label.font = UIFont.systemFont(ofSize: 26, weight: .bold)
        return label
    }()
    
    lazy var rightButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("See All", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        return button
    }()
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Setup
    
    private func setupHierarhy() {
        addSubview(view)
        addSubview(titleLabel)
        addSubview(rightButton)
    }
    private func setupLayout() {
        titleLabel.snp.makeConstraints { make in
            make.left.equalTo(self).offset(10)
            make.bottom.equalTo(self).inset(10)
        }
        rightButton.snp.makeConstraints { make in
            make.right.equalTo(self).inset(10)
            make.bottom.equalTo(self).inset(5)
        }
        view.snp.makeConstraints { make in
            make.top.equalTo(self)
            make.right.equalTo(self)
            make.left.equalTo(self).offset(10)
            make.height.equalTo(0.5)
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.titleLabel.text = nil
        self.rightButton.isHidden = false
    }
}
