//
//  CompositionTableViewCell.swift
//  HW14
//
//  Created by Виктор Басиев on 02.09.2022.
//

import UIKit

class CompositionTableViewCell: UICollectionViewCell {
    
    static let identifier = "CollectionTableViewCell"
    
//    MARK: - Outlets
    
    lazy var icon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "person")
        
        return image
    }()
    lazy var titleTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "title"
        label.textColor = .systemBlue
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    lazy var countLabel: UILabel = {
        let label = UILabel()
        label.text = "10"
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    private let detailIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "chevron.right", withConfiguration: UIImage.SymbolConfiguration(pointSize: 13))?.withTintColor(.systemGray, renderingMode: .alwaysOriginal)
        return image
    }()
    private let view: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    
//    MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupHierarhy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    MARK: - Setup
    
    private func setupHierarhy() {
        addSubview(icon)
        addSubview(titleTypeLabel)
        addSubview(detailIcon)
        addSubview(countLabel)
        addSubview(view)
    }
    private func setupLayout() {
        icon.snp.makeConstraints { make in
            make.top.equalTo(self).offset(10)
            make.left.equalTo(self).offset(20)
        }
        titleTypeLabel.snp.makeConstraints { make in
            make.top.equalTo(self).offset(10)
            make.left.equalTo(icon.snp.right).offset(20)
        }
        detailIcon.snp.makeConstraints { make in
            make.right.equalTo(self).inset(10)
            make.top.equalTo(self).offset(10)
        }
        countLabel.snp.makeConstraints { make in
            make.top.equalTo(self).offset(10)
            make.right.equalTo(detailIcon.snp.left).offset(-10)
        }
        view.snp.makeConstraints { make in
            make.bottom.right.equalTo(self)
            make.left.equalTo(self).offset(contentView.frame.width / 7)
            make.height.equalTo(0.2)
        }
    }
}
