//
//  ViewController.swift
//  Viper-UserDefault
//
//  Created by Omid Tavanaei on 6/22/19.
//  Copyright © 2019 Omid Tavanaei. All rights reserved.
//

import UIKit

class View: UIViewController, PresenterToViewProtocol {
    
    func printResult() {
        print("saved successfully")
    }
    
    var presenter: ViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        setupView()
        view.backgroundColor = UIColor.white
    }
    
    // MARK: Setting Up Button
    unowned var saveButton: UIButton = {
    let button = UIButton()
        button.titleLabel?.text = "Save To User Default"
        button.setTitleColor(UIColor.cyan, for: .normal)
        button.backgroundColor = UIColor.brown
        button.frame = CGRect(x: 150, y: 60, width: 100, height: 45)
        button.layer.cornerRadius = 10
        
        return button
    }()
    func setupButton() {
        view.addSubview(saveButton)
        saveButton.addTarget(self, action: #selector(buttonPressed), for: .touchDown)
    }
    
    @objc func buttonPressed() {
        presenter?.fetchData(dataFetched: textField.text ?? " ")
        print(UserDefaults.standard.string(forKey: "name")!)
    }
    
    // MARK: Setting Up TextField
    
    unowned var textField: UITextField = {
    var text = UITextField()
        
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = UIColor.black
        text.textAlignment = .left
        text.placeholder = "Type something"
        text.clearsOnBeginEditing = true
        text.borderStyle = .none
        text.backgroundColor = UIColor(white: 1, alpha: 0.42)
        
        return text
    }()
    //MARK: Setting Up View
    
    func setupView() {
        
        view.addSubview(textField)
        view.addSubview(saveButton)
        
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        textField.topAnchor.constraint(equalTo: view.topAnchor, constant: 400).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
    }
    
    
}
