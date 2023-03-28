//
//  ProfileViewController.swift
//  Week2-Day1
//
//  Created by Alief Ahmad Azies on 28/03/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let topView: UIView = {
            let vw = UIView()
        vw.backgroundColor = .systemMint
            return vw
        }()
        
    let profileImage: UIImageView = {
        let iv = UIImageView()
        return iv
    }()
    
    let nameLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let emailLabel: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    let profileStackView: UIStackView = {
        let sv = UIStackView()
        return sv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    
    func setup() {
        
        view.addSubview(topView)
        topView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            topView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 2.4)
        ])
        
        topView.addSubview(profileImage)
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileImage.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            profileImage.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -36),
            profileImage.widthAnchor.constraint(equalToConstant: 160),
            profileImage.heightAnchor.constraint(equalToConstant: 160)
        ])
        
        profileImage.image = UIImage(named: "john")
        profileImage.backgroundColor = .white
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.cornerRadius = 80
        profileImage.clipsToBounds = true
        profileImage.layer.masksToBounds = true
        
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 24),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        nameLabel.text = "John Wick"
        
        view.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8),
            emailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        emailLabel.text = "johnwick@gmail.com"
        
        view.addSubview(profileStackView)
        profileStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            profileStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            profileStackView.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 24),
        ])
        let constraint = profileStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
        constraint.priority = .defaultLow
        constraint.isActive = true
        
//        let editProfileButton = UIButton(type: .system)
//        editProfileButton.setTitle("Edit Profile", for: .normal)
//        editProfileButton.setImage(UIImage(systemName: "pencil"), for: .normal)
        let editButton = setButtonToStackView(title: "Edit Profile", image: "pencil")
        let changePasswordButton = setButtonToStackView(title: "ChangePassword", image: "lock")
        let historyButton = setButtonToStackView(title: "History", image: "clock")
        let aboutButton = setButtonToStackView(title: "About", image: "info.circle")
        let logoutButton = setButtonToStackView(title: "Logout", image: "arrowshape.turn.up.backward")
        
        profileStackView.axis = .vertical
        profileStackView.spacing = 16
        profileStackView.distribution = .fillEqually
        
        profileStackView.addArrangedSubview(editButton)
        profileStackView.addArrangedSubview(changePasswordButton)
        profileStackView.addArrangedSubview(historyButton)
        profileStackView.addArrangedSubview(aboutButton)
        profileStackView.addArrangedSubview(logoutButton)
        
    }
    
    func setButtonToStackView(title: String, image: String) -> UIButton {
//        let button = UIButton(type: .system)
//        var filled = UIButton.Configuration.filled()
//        filled.title = "Filled button"
//        filled.buttonSize = .large
//        filled.subtitle = "With subtitle even"
//        filled.image = UIImage(systemName: "bubble.left.fill")
//        filled.imagePlacement = .trailing
//        filled.imagePadding = 5
//
//        let button = UIButton(configuration: filled, primaryAction: nil)
        
        
        var plain = UIButton.Configuration.plain()
        plain.title = title
        plain.image = UIImage(systemName: image)
        plain.imagePadding = 16
        
        let button = UIButton(configuration: plain)
        button.backgroundColor = .systemMint
        button.heightAnchor.constraint(equalToConstant: 36).isActive = true
        button.contentHorizontalAlignment = .left
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        return button
        //        button.setTitle(title, for: .normal)
//        button.setImage(UIImage(systemName: image), for: .normal)
//        button.tintColor = .white
//        button.setTitleColor(.white, for: .normal)
//        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
//        button.backgroundColor = .systemMint
//        button.contentHorizontalAlignment = .left
//        button.imagePadding = 5
//        return button
    }
    
}
