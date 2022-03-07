//
//  PostViewController.swift
//  Navigation
//
//  Created by MacBook on 20.02.2022.
//

import UIKit

class PostViewController: UIViewController {
    
    var post: Post!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .green

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = post.title
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Инфо", style: .done, target: self, action: #selector(showInfo))

        // Do any additional setup after loading the view.
        
        
    }
    
    @objc private func showInfo() {
        let infoVC = InfoViewController()
        self.present(infoVC, animated: true)
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
