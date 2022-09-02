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
        let layout = creatLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CompositionViewCell.self, forCellWithReuseIdentifier: CompositionViewCell.identifier)
        collectionView.register(CompositionTableViewCell.self, forCellWithReuseIdentifier: CompositionTableViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
    
//MARK: - LifeCycle

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.title = "Albums"
        navigationController?.navigationBar.prefersLargeTitles = true
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
    
    private func creatLayout() -> UICollectionViewCompositionalLayout {
        
        return UICollectionViewCompositionalLayout { sectionIndex, _ in
            
            switch sectionIndex {
            case 0:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2 ),
                                                       heightDimension: .fractionalHeight(1 / 2 ))
                
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2)
                
                layoutGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(5)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 2.5, bottom: 0, trailing: 2.5)
                
                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                sectionLayout.orthogonalScrollingBehavior = .groupPaging
                return sectionLayout
                
            case 1:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                                      heightDimension: .fractionalWidth(0.5))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                       heightDimension: .fractionalHeight(1 / 4))
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: layoutItem, count: 2)
                layoutGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(5)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 2.5, bottom: 0, trailing: 2.5)

                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                sectionLayout.orthogonalScrollingBehavior = .groupPaging
                return sectionLayout

            case 2:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension:  .fractionalWidth(1),
                                                       heightDimension: .absolute(44))
                
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])
                                
                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 20, leading: 10, bottom: 10, trailing: 10)
                return sectionLayout
                
            default:
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension:  .fractionalWidth(1),
                                                       heightDimension: .absolute(44))
                
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])
                                
                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 50, trailing: 10)
                return sectionLayout
            }

        }
    }
}

//MARK: - Extension DataSource + Delegate
extension AlbumsTabBar: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 10
        case 1:
            return 10
        case 2:
            return 9
        default:
            return 3
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionViewCell.identifier, for: indexPath)
            item.backgroundColor = .green
            return item
        case 1:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionViewCell.identifier, for: indexPath)
            item.backgroundColor = .gray
            return item
        case 2:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionTableViewCell.identifier, for: indexPath)
            item.backgroundColor = .red
            return item
        default:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionTableViewCell.identifier, for: indexPath)
            item.backgroundColor = .red
            return item
        }

    }
}


