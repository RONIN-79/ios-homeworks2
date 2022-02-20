//
//  ViewController.swift
//  Navigation
//
//  Created by Руфат Багирли on 19.02.2022.
//

import UIKit

class InfoViewController: UIViewController {
        
        private lazy var alertButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Показать оповещение", for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.layer.borderWidth = 1
            button.layer.cornerRadius = 5
            button.backgroundColor = .yellow
            button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
            
            return button
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .systemBlue
            view.addSubview(alertButton)
            
            alertButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
            alertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
            alertButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
            alertButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

            // Do any additional setup after loading the view.
        }
        
        @objc private func showAlert() {
            let ac = UIAlertController(title: "Оповещение", message: "Тестовое оповещение", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Тест", style: .default, handler: { _ in print("Вы выиграли")
            }))
            ac.addAction(UIAlertAction(title: "Отмена", style: .cancel, handler: nil))
            present(ac, animated: true)
        }
        
}

