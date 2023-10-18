//
//  ViewController.swift
//  MovieScope
//
//  Created by Developer on 18.10.2023.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setsVCs()
        
    }
    
    private func setupView() {
        
        view.backgroundColor = .systemYellow
        tabBar.tintColor = .label
    }
    
    private func setsVCs() {
        
        let viewControllers = [
            HomeViewController(),
            UpcomingViewController(),
            SearchViewController(),
            DownloadsViewController()
        ]
        
        let tabBarItemImages = [
            "house",
            "play.circle",
            "magnifyingglass",
            "arrow.down.to.line"
        ]
        
        let tabBarItemTitles = ["Home", "Coming Soon", "Top Search", "Downloads"]
        
        var navigationControllers: [UINavigationController] = []

        for (index, viewController) in viewControllers.enumerated() {
            let navigationController = UINavigationController(rootViewController: viewController)
            navigationController.tabBarItem.image = UIImage(systemName: tabBarItemImages[index])
            navigationController.tabBarItem.title = tabBarItemTitles[index]
            navigationControllers.append(navigationController)
        }

        setViewControllers(navigationControllers, animated: true)
    }


}

