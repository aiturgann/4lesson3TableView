//
//  ViewController.swift
//  4lesson3TableView
//
//  Created by Aiturgan Kurmanbekova on 18/2/24.
//

import UIKit

class ViewController: UIViewController {
    
    private let loginLabel = MakerView().uiLabelMaker(text: "Login",
                                                      textColor: .black,
                                                      size: 18,
                                                      weight: .bold)
    
    private let userImage = MakerView().uiImageMaker(image: .user)
    
    private let userLabel = MakerView().uiLabelMaker(text: "Welcome back, Rohit thakur",
                                                     textColor: .black,
                                                     size: 14)
    
    private let mainImage = MakerView().uiImageMaker(image: .image)
    
    private let enterLabel = MakerView().uiLabelMaker(text: "Enter Your Mobile Number",
                                                      textColor: UIColor(hex: "#F2796B"),
                                                      size: 17)
    
    private let numberTF = MakerView().uiTextFieldMaker(placeholder: "Enter Number")
    
    private let changeButton = MakerView().uiButtonMaker(title: "Change Number?",
                                                         image: nil)
    
    private let loginButton = MakerView().uiButtonMaker(title: "Login",
                                                        titleColor: .white,
                                                        image: nil,
                                                        backgroundColor: UIColor(hex: "#F2796B"))
    
    private let googleImage = MakerView().uiImageMaker(image: .google)
    
    private let googleLabel = MakerView().uiLabelMaker(text: "Google",
                                                       textColor: .black,
                                                       size: 14)
    
    private let lastLabel = MakerView().uiLabelMaker(text: "You Don't have an account?",
                                                     size: 14)
    
    private let signUpBtn = MakerView().uiButtonMaker(title: "Sign up",
                                                      image: nil)
    
    private let errorLabel = MakerView().uiLabelMaker(text: "Please, Enter the Number of Kyrgyzstan",
                                                      textColor: .white)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        error()
        //        checkNumber()
    }
    
    private func setupUI() {
        view.addSubview(loginLabel)
        NSLayoutConstraint.activate(
            [loginLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 62),
             loginLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
             loginLabel.heightAnchor.constraint(equalToConstant: 23)
            ])
        
        view.addSubview(userImage)
        NSLayoutConstraint.activate(
            [userImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 62),
             userImage.leadingAnchor.constraint(equalTo: loginLabel.trailingAnchor, constant: 2),
             userImage.heightAnchor.constraint(equalToConstant: 20),
             userImage.widthAnchor.constraint(equalToConstant: 20)
            ])
        
        view.addSubview(userLabel)
        NSLayoutConstraint.activate(
            [userLabel.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 5),
             userLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
             userLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        view.addSubview(mainImage)
        NSLayoutConstraint.activate(
            [mainImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 155),
             mainImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             mainImage.heightAnchor.constraint(equalToConstant: 231),
             mainImage.widthAnchor.constraint(equalToConstant: 296)
            ])
        
        view.addSubview(enterLabel)
        NSLayoutConstraint.activate(
            [enterLabel.topAnchor.constraint(equalTo: mainImage.bottomAnchor, constant: 10),
             enterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             enterLabel.heightAnchor.constraint(equalToConstant: 26)
            ])
        
        view.addSubview(numberTF)
        NSLayoutConstraint.activate(
            [numberTF.topAnchor.constraint(equalTo: enterLabel.bottomAnchor, constant: 30),
             numberTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
             numberTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
             numberTF.heightAnchor.constraint(equalToConstant: 43)
            ])
        
        view.addSubview(changeButton)
        NSLayoutConstraint.activate(
            [changeButton.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 5),
             changeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
             changeButton.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        view.addSubview(loginButton)
        NSLayoutConstraint.activate(
            [loginButton.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 60),
             loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
             loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
             loginButton.heightAnchor.constraint(equalToConstant: 43)
            ])
        
        view.addSubview(googleImage)
        NSLayoutConstraint.activate(
            [googleImage.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 50),
             googleImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 160),
             googleImage.heightAnchor.constraint(equalToConstant: 21),
             googleImage.widthAnchor.constraint(equalToConstant: 21)
            ])
        
        view.addSubview(googleLabel)
        NSLayoutConstraint.activate(
            [googleLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 50),
             googleLabel.leadingAnchor.constraint(equalTo: googleImage.trailingAnchor, constant: 5),
             googleLabel.heightAnchor.constraint(equalToConstant: 21)
            ])
        
        view.addSubview(lastLabel)
        NSLayoutConstraint.activate(
            [lastLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
             lastLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90),
             lastLabel.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        view.addSubview(signUpBtn)
        NSLayoutConstraint.activate(
            [signUpBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60),
             signUpBtn.leadingAnchor.constraint(equalTo: lastLabel.trailingAnchor, constant: 2),
             signUpBtn.heightAnchor.constraint(equalToConstant: 18)
            ])
        
        loginButton.addTarget(nil, action: #selector(loginBtnTppd), for: .touchUpInside)
    }
    
    private func error() {
        view.addSubview(errorLabel)
        NSLayoutConstraint.activate(
            [errorLabel.topAnchor.constraint(equalTo: numberTF.bottomAnchor, constant: 5),
             errorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
             errorLabel.heightAnchor.constraint(equalToConstant: 16)
            ])
    }
    
    
    @objc private func loginBtnTppd() {
        let vc = TableViewController()
        if let numberText = numberTF.text {
            if numberText.hasPrefix("+996") && numberText.count == 13 {
                navigationController?.pushViewController(vc, animated: true)
            } else if numberText.hasPrefix("996") && numberText.count == 12 {
                navigationController?.pushViewController(vc, animated: true)
            } else if numberText.hasPrefix("0") && numberText.count == 10 {
                navigationController?.pushViewController(vc, animated: true)
            } else {
                errorLabel.textColor = .red
            }
        }
    }
    
    
}

