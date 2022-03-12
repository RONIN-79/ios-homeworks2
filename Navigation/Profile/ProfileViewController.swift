//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Руфат Багирли on 20.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let profileHeaderView: UIView = {
        let profileHearderView = ProfileHeaderView()
        profileHearderView.translatesAutoresizingMaskIntoConstraints = false
        profileHearderView.backgroundColor = .lightGray
        return profileHearderView
    } ()


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Профиль"
        view.addSubview(profileHeaderView)
        addConstraints()


        // Do any additional setup after loading the view.
    }

    private func addConstraints() {
    var constraints = [NSLayoutConstraint]()
    
    constraints.append(profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor))
    constraints.append(profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor))
    constraints.append(profileHeaderView.bottomAnchor.constraint(equalTo: view.bottomAnchor))
    constraints.append(profileHeaderView.topAnchor.constraint(equalTo: view.topAnchor))
    
    NSLayoutConstraint.activate(constraints)
    }

    override func viewWillLayoutSubviews() {
    let profileView = ProfileHeaderView()
    profileView.frame = self.view.frame
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
