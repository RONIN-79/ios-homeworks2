//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Руфат Багирли on 20.02.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var profileHeaderView: ProfileHeaderView = {
        let profileHearderView = ProfileHeaderView(frame: .zero)
        profileHearderView.translatesAutoresizingMaskIntoConstraints = false
        profileHearderView.backgroundColor = .lightGray
        return profileHearderView
    }()
    
    private lazy var setTitleButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Установить заголовок", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 4
        button.addTarget(self, action: #selector(didTapSetTitleButton), for: .touchUpInside)
        return button
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "ArticleCell")
        tableView.backgroundColor = .clear
        tableView.backgroundColor = .systemGray6
        tableView.layer.borderColor = UIColor.lightGray.cgColor
        tableView.layer.borderWidth = 0.5
        return tableView
    }()
    
    private var heightConstraint: NSLayoutConstraint?
    
    private var dataSource: [Post] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Профиль"
        view.addSubview(profileHeaderView)
        profileHeaderViewSetup()
        setTitleButtonSetup()
        setupTableView()
        addDataSource()
        print(dataSource.count)


        // Do any additional setup after loading the view.
    }
    
    private func profileHeaderViewSetup() {
        self.view.backgroundColor = .white
        self.view.addSubview(self.profileHeaderView)
       // self.view.addSubview(setTitleButton)
        
        let topConstraint = self.profileHeaderView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor)
        let leadingConstraint = self.profileHeaderView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor)
        let trailingConstraint = self.profileHeaderView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
        self.heightConstraint = self.profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        
        NSLayoutConstraint.activate([
            topConstraint,
            leadingConstraint,
            trailingConstraint,
            self.heightConstraint
        ].compactMap({$0}))
    }
    
    private func setTitleButtonSetup() {
        self.view.addSubview(setTitleButton)
        
        let setTitleButtonHeightConstraint = self.setTitleButton.heightAnchor.constraint(equalToConstant: 50)
        let setTitleButtonBottomConstraint = self.setTitleButton.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
        let setTitleButtonLeadingConstraint = self.setTitleButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor)
        let setTitleButtonTrailingConstraint = self.setTitleButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
        
        NSLayoutConstraint.activate([
            setTitleButtonHeightConstraint,
            setTitleButtonBottomConstraint,
            setTitleButtonLeadingConstraint,
            setTitleButtonTrailingConstraint
        ])
    }
    
    private func setupTableView() {
        self.view.addSubview(self.tableView)
        
        let tableViewTopConstraint = self.tableView.topAnchor.constraint(equalTo: self.profileHeaderView.bottomAnchor)
        let tableViewBottomConstraint = self.tableView.bottomAnchor.constraint(equalTo: self.setTitleButton.topAnchor)
        let tableViewLeadingConstraint = self.tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10)
        let tableViewTrailingConstraint = self.tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10)
        
        NSLayoutConstraint.activate([
            tableViewTopConstraint,
            tableViewBottomConstraint,
            tableViewLeadingConstraint,
            tableViewTrailingConstraint
        ])

    }
    
    private func addDataSource() {
        self.dataSource.append(.init(author: "Steam Jet выступили с \"шестым игроком\" ", description: "Концерт Steam Jet в клубе Action состоялся с двумя басистами. Курьёз произошёл по причине того, что оригинального басиста изначально должен был заменить \"шестой полевой\" музыкант - Александр Мутин. Однако, как оказалось позже, Владимир Пакин всё же смог дать концерт и, чтобы не нарушать обещание, Александр сыграл с группой несколько композиций.", image: "Pic1", likes: 25, views: 30))
        self.dataSource.append(.init(author: "Поздравляем с пополнением!", description: "У басиста группы Steam Jet Владимира Пакина на днях произошло пополнение в семействе - у него родился сын! Мальчика назвали Платоном - в честь кого, пока непонятно. Напомним, что Владимир сам работает акушером-гинекологом и на его счету не один десяток рождённый малыш.", image: "Pic2", likes: 23, views: 28))
        self.dataSource.append(.init(author: "С обновлением!", description: "Ритм-гитарист Steam Jet Павел Власов недавно приобрёл новую гитару. Интересно то, что гитара старше него самого почти на пятнадцать лет! Желаем Павлу крепких струн и чтобы Хэтфилд обзавидовался!", image: "Pic3", likes: 15, views: 18))
                
    }
    
    @objc func didTapSetTitleButton() {
        let ac = UIAlertController(title: "Установить заголовок", message: "Ввести новый заголовок", preferredStyle: .alert)
        ac.addTextField()
        
        let okAction = UIAlertAction(title: "Ок", style: .default) { [weak self, weak ac] _ in
            guard let newTitle = ac?.textFields?[0].text else {return}
            if newTitle.isEmpty {
                let ac = UIAlertController(title: "Введите что-нибудь", message: nil, preferredStyle: .alert)
                let okAction = UIAlertAction(title: "Ок", style: .default, handler: nil)
                ac.addAction(okAction)
                self?.present(ac, animated: true)
            }
            self?.profileHeaderView.changeTitle(title: newTitle)
        }
        ac.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .cancel, handler: nil)
        ac.addAction(cancelAction)
        
        present(ac, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSource.count
    }
            
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell", for: indexPath) as? PostTableViewCell else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
            return cell
        }
        let article = self.dataSource[indexPath.row]
        let viewModel = PostTableViewCell.ViewModel(author: article.author,
                                                    image: article.image,
                                                    description: article.description,
                                                    likes: article.likes,
                                                    views: article.views)
        cell.setup(with: viewModel)
        return cell
    }
}





    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


