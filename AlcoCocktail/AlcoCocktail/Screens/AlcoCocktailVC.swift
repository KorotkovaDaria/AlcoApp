//
//  GalleryVC.swift
//  Art
//
//  Created by Daria on 29.02.2024.
//

import UIKit

class AlcoCocktailVC: UIViewController {
    
    var collectonView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        configureViewController()
        getData()
    }
    
    func getData() {
        NetworkManager.shared.getAlcoCocktail { cocktails, errorMessage in
            guard let cocktails = cocktails else {
                self.presentAlcoAlertOnMainTread(title: "Bad stuff happend", message: errorMessage!.rawValue, buttonTitle: "Ok")
                return
            }
            print(cocktails.count)
        }
    }
    
    func configureViewController() {
        view.backgroundColor = UIColor(named: Resources.Colors.yellow)
    }
    
    func configureCollectionView() {
        collectonView = UICollectionView(frame: view.bounds,collectionViewLayout: createThreeColumnFlowLayout())
        view.addSubview(collectonView)
        collectonView.backgroundColor = UIColor(named: Resources.Colors.yellow)
        collectonView.register(AlcoCocktailCell.self, forCellWithReuseIdentifier: AlcoCocktailCell.reuseID)
    }
    
    func createThreeColumnFlowLayout() -> UICollectionViewFlowLayout {
        let width = view.bounds.width
        let padding: CGFloat = 10
        let minimumItemSpacing: CGFloat = 12
        let availableWidth = width - (padding * 2) - (minimumItemSpacing * 2)
        let itemWidth = availableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 20)
        
        return flowLayout
    }
}
