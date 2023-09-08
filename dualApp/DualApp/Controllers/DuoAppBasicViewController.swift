//
//  DuoAppBasicViewController.swift
//  Hackaton2023
//
//  Created by Dimitar Shopovski on 8.9.23.
//

import UIKit

@objc protocol DuoAppBasicFunctions: AnyObject {
    @objc func closeController()
    func createMiddileLabel(text: String?)
}

class DuoAppBasicViewController: UIViewController, DuoAppBasicFunctions {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCloseButton()
    }
    
    @objc func closeController() {
        
    }
    
    func createCloseButton() {
        let closeButton = UIButton(type: .custom)
        closeButton.setImage(UIImage(systemName: "x.circle"), for: .normal)
        closeButton.addTarget(self, action: #selector(closeController), for: .touchUpInside)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(closeButton)
        
        closeButton.heightAnchor.constraint(equalToConstant: 24.0).isActive = true
        closeButton.widthAnchor.constraint(equalToConstant: 24.0).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 8).isActive = true
        closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
    }
    
    func createMiddileLabel(text: String?) {
        let middleLabel = UILabel()
        middleLabel.text = text
        middleLabel.numberOfLines = 0
        middleLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(middleLabel)
        
        middleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        middleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        middleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
    }
}
