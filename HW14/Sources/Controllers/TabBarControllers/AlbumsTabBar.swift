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
        collectionView.register(HeaderCompositionCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderCompositionCell.identifier)
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
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                              heightDimension: .estimated(60))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
                                                                                      elementKind: UICollectionView.elementKindSectionHeader,
                                                                                      alignment: .top)
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalWidth(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 60, trailing: 5)
                
                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1 / 2 ),
                                                       heightDimension: .fractionalWidth(1 / 2 * 2.6 ))
                
                let layoutGroup = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: layoutItem, count: 2)
                
                layoutGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(5)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 2.5, bottom: 20, trailing: 2.5)

                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                sectionLayout.orthogonalScrollingBehavior = .groupPaging
                return sectionLayout
                
            case 1:
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                              heightDimension: .estimated(60))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
                                                                                      elementKind: UICollectionView.elementKindSectionHeader,
                                                                                      alignment: .top)
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.5),
                                                      heightDimension: .fractionalWidth(0.5))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)

                let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                       heightDimension: .fractionalHeight(1 / 2.6))
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: layoutItem, count: 2)
                layoutGroup.interItemSpacing = NSCollectionLayoutSpacing.fixed(5)
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 2.5, bottom: 0, trailing: 2.5)

                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                sectionLayout.orthogonalScrollingBehavior = .groupPaging
                return sectionLayout

            case 2:
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                              heightDimension: .estimated(60))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
                                                                                      elementKind: UICollectionView.elementKindSectionHeader,
                                                                                      alignment: .top)
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension:  .fractionalWidth(1),
                                                       heightDimension: .absolute(44))
                
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0)
                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0)
                return sectionLayout
                
            default:
                let layoutSectionHeaderSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                              heightDimension: .estimated(60))
                let layoutSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: layoutSectionHeaderSize,
                                                                                      elementKind: UICollectionView.elementKindSectionHeader,
                                                                                      alignment: .top)
                let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1),
                                                      heightDimension: .fractionalHeight(1))
                let layoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
                layoutItem.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 0, bottom: 5, trailing: 0)
                
                let groupSize = NSCollectionLayoutSize(widthDimension:  .fractionalWidth(1),
                                                       heightDimension: .absolute(44))
                
                let layoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [layoutItem])
                layoutGroup.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0)
                let sectionLayout = NSCollectionLayoutSection(group: layoutGroup)
                sectionLayout.boundarySupplementaryItems = [layoutSectionHeader]
                sectionLayout.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0)
                return sectionLayout
            }
        }
    }
}

//MARK: - Extension DataSource + Delegate
extension AlbumsTabBar: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return Settings.settingsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Settings.settingsArray[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionViewCell.identifier, for: indexPath) as! CompositionViewCell
            item.configuration(model: Settings.settingsArray[indexPath.section][indexPath.item])
            return item
        case 1:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionViewCell.identifier, for: indexPath) as! CompositionViewCell
            item.configuration(model: Settings.settingsArray[indexPath.section][indexPath.item])
            return item
        case 2:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionTableViewCell.identifier, for: indexPath) as! CompositionTableViewCell
            item.configuration(model: Settings.settingsArray[indexPath.section][indexPath.item])
            return item
        default:
            let item = collectionView.dequeueReusableCell(withReuseIdentifier: CompositionTableViewCell.identifier, for: indexPath) as! CompositionTableViewCell
            item.configuration(model: Settings.settingsArray[indexPath.section][indexPath.item])
            return item
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch indexPath.section {
        case 0:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCompositionCell.identifier, for: indexPath) as! HeaderCompositionCell
            header.titleLabel.text = "My Albums"
            return header
        case 1:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCompositionCell.identifier, for: indexPath) as! HeaderCompositionCell
            header.titleLabel.text = "People & Places"
            header.rightButton.isHidden = true
            return header
        case 2:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCompositionCell.identifier, for: indexPath) as! HeaderCompositionCell
            header.titleLabel.text = "Media Types"
            header.rightButton.isHidden = true
            return header
        default:
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderCompositionCell.identifier, for: indexPath) as! HeaderCompositionCell
            header.titleLabel.text = "Utilities"
            header.rightButton.isHidden = true
            return header
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("section \(indexPath.section) item \(indexPath.item)")
    }
}


