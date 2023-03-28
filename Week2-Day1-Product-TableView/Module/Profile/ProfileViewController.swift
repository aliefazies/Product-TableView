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
    
    let editView: UIView = {
        let vw = UIView()
        return vw
    }()
    
    let editImage: UIImageView = {
        let vw = UIImageView()
        return vw
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
        navigationController?.navigationBar.prefersLargeTitles = false
        setup()
    }
    
    func setup() {
        
        view.addSubview(topView)
        topView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            topView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 3.2)
        ])
        
        topView.addSubview(profileImage)
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            profileImage.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            profileImage.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -24),
            profileImage.widthAnchor.constraint(equalToConstant: 120),
            profileImage.heightAnchor.constraint(equalToConstant: 120)
        ])
        
        profileImage.image = UIImage(named: "john")
        profileImage.backgroundColor = .white
        profileImage.contentMode = .scaleAspectFill
        profileImage.layer.cornerRadius = 60
        profileImage.clipsToBounds = true
        profileImage.layer.masksToBounds = true
        
        view.addSubview(editView)
        editView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            editView.bottomAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 0),
            editView.trailingAnchor.constraint(equalTo: profileImage.trailingAnchor, constant: 0),
            editView.widthAnchor.constraint(equalToConstant: 36),
            editView.heightAnchor.constraint(equalToConstant: 36)
        ])
        
        editView.layer.cornerRadius = 18
        editView.layer.masksToBounds = true
        editView.backgroundColor = .systemGray6
        
        editView.addSubview(editImage)
        editImage.translatesAutoresizingMaskIntoConstraints = false
        editImage.centerXAnchor.constraint(equalTo: editView.centerXAnchor).isActive = true
        editImage.centerYAnchor.constraint(equalTo: editView.centerYAnchor).isActive = true
        editImage.image = UIImage(systemName: "camera")
        editImage.tintColor = .black
        
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 24),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        nameLabel.text = "John Wick"
        nameLabel.font = UIFont.systemFont(ofSize: 24, weight: .medium)
        
        view.addSubview(emailLabel)
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            emailLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        emailLabel.text = "johnwick@gmail.com"
        emailLabel.textColor = .lightGray
        
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
        
        let editButton = setButtonToStackView(title: "Edit Profile", image: "pencil")
        let changePasswordButton = setButtonToStackView(title: "Change Password", image: "lock")
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
        var plain = UIButton.Configuration.plain()
        plain.title = title
        plain.image = UIImage(systemName: image)
        plain.imagePadding = 16
        
        let button = UIButton(configuration: plain)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        button.backgroundColor = .systemMint
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
        button.contentHorizontalAlignment = .left
        button.tintColor = .white
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 16
        button.clipsToBounds = true
        return button
    }
    
}
