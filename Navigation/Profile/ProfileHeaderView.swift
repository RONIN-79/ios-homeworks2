//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by MacBook on 20.02.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupView() {
        
        let profileImage = UIImage(named: "portrait")
        let profileImageView = UIImageView(image: profileImage)
        profileImageView.frame = CGRect(x: 35, y: 150, width: 150, height: 200)
        self.addSubview(profileImageView)

        
        let name = UILabel(frame: CGRect(x: 215, y: 190, width: 200, height: 80))
        name.text = "Ждун"
        name.font = .systemFont(ofSize: 35, weight: .bold)
        self.addSubview(name)
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
