//
//  PostViewController.swift
//  Navigation
//
//  Created by Руфат Багирли on 20.02.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        let myPost = Post()
        let titleLabel = UILabel()
        titleLabel.text = myPost.title
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        navigationItem.titleView = titleLabel
        let infoImage = UIImage(named: "info")
        let infoButton = UIBarButtonItem(image: infoImage , style: .done, target: self, action: #selector(buttonInfoClicked))
        navigationItem.rightBarButtonItem = infoButton
    }
    
    @objc func buttonInfoClicked() {
        let infoViewController = InfoViewController()
        navigationController?.pushViewController(infoViewController, animated: true)
    }
}
