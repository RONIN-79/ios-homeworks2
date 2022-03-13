//
//  PostViewController.swift
//  Navigation
//
//  Created by Руфат Багирли on 20.02.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var post: Post!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .lightGray

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        //self.title = post.title
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Info", style: .done, target: self, action: #selector(showInfo))
    }
    
    @objc private func showInfo() {
        let infoVC = InfoViewController()
        self.present(infoVC, animated: true)
    }
    
  /*  override func viewDidLoad() {
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
    } */


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
