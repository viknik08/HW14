//
//  AlbumsCollectionViewController.swift
//  HW14
//
//  Created by Виктор Басиев on 02.09.2022.
//

import UIKit
import SnapKit

class AlbumsTabBar: UIViewController {
    
//MARK: - Outlets
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CompositionViewCell.self, forCellWithReuseIdentifier: CompositionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
    
//MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Albums"
        setupHierarhy()
        setupLayout()

    }
    
//MARK: - Setup

    private func setupHierarhy() {
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
        collectionView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalTo(view)
        }
    }
}

//MARK: - Extension DataSource + Delegate
extension AlbumsTabBar: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionViewCell.identifier, for: indexPath)
        return item
    }
}


