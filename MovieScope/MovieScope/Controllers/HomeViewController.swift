//
//  HomeViewController.swift
//  MovieScope
//
//  Created by Developer on 18.10.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var homeFeedTable: UITableView = {
        let homeFeedTable = UITableView(frame: .zero, style: .grouped)
        homeFeedTable.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: CollectionViewTableViewCell.identifier)
        return homeFeedTable
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        configureNavBar()
        
        homeFeedTable.dataSource = self
        homeFeedTable.delegate = self

    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
    
    private func setupView() {
        
        view.backgroundColor = .black
        
        view.addSubview(homeFeedTable)
        
        let headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 500))
        homeFeedTable.tableHeaderView = headerView
                                          
    }
    
    private func configureNavBar() {
        var image = UIImage(named: "logo")
        image?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    
    
}
