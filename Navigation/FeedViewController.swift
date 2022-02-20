//
//  FeedViewController.swift
//  Navigation
//
//  Created by Руфат Багирли on 20.02.2022.
//

import UIKit

class FeedViewController: UIViewController {
    
    var postButton: UIButton!
    
    var post = Post()
    
    override func loadView() {
        view = UIView()
        
        postButton = UIButton()
        //postButton.translatesAutoresizingMaskIntoConstraints = false
        postButton.backgroundColor = .systemRed
        postButton.layer.borderWidth = 1
        postButton.layer.cornerRadius = 5
        postButton.frame = CGRect(x: 20, y: 200, width: 300, height: 50)
        postButton.setTitle("Пост", for: .normal)
        postButton.addTarget(self, action: #selector(showPost), for: .touchUpInside)
        view.addSubview(postButton)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
        @objc func showPost() {
            let postVC = PostViewController()
            postVC.post = post
            self.navigationController?.pushViewController(postVC, animated: true)
        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
