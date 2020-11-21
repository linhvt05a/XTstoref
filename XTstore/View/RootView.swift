//
//  ViewController.swift
//  XTstore
//
//  Created by admin on 11/19/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class RootView: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setupRootView()
        
    }
    
    func setupRootView(){
        let tabbar = UITabBarController()
        let shopVC = UINavigationController(rootViewController: ShopViewController())
        shopVC.navigationItem.title = "fdfdsfsdf"
        shopVC.navigationBar.isTranslucent = true
        shopVC.navigationBar.isTranslucent = true
        let accountVC = AccountViewController()
        let liveVC = LiveViewController()
        let cartVC = CartViewController()
        let favoriteVC = FavoriteViewController()
        tabbar.setViewControllers([shopVC, accountVC, liveVC, cartVC, favoriteVC], animated: false)
        tabbar.modalPresentationStyle = .fullScreen
        tabbar.tabBar.barTintColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        present(tabbar, animated: true)
        setTabTilte(tabbar)
        
    }
    
    func setTabTilte(_ tabar: UITabBarController){
        let titles = [
            TabarModel(title: "XTstore", image: "phone", selectedImage: "phoneBlack"),
            TabarModel(title: "Live", image: "live", selectedImage: "liveBlack"),
            TabarModel(title: "Favorite", image: "heart", selectedImage: "heartBlack"),
            TabarModel(title: "Account", image: "user", selectedImage: "userBlack"),
            TabarModel(title: "Bag", image: "shopping-bags", selectedImage: "shoppingblack")
        ]
        
        guard let items = tabar.tabBar.items else {
            return
        }
        
        for i in 0 ..< items.count {
            items[i].title = titles[i].title
            items[i].image = UIImage(named: titles[i].image)
            items[i].selectedImage = UIImage(named: titles[i].selectedImage)
        }
    }
    
    
}

