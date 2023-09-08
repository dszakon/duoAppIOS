//
//  MainViewController.swift
//  DualApp
//
//  Created by Dimitar Shopovski on 8.9.23.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var topContainerView: UIView!
    @IBOutlet weak var bottomContainerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        createTopController()
        createBottomController()
    }
    
    func createTopController() {
        
        let testBrowserViewController = TestBrowserControllerViewController()
        testBrowserViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        topContainerView.addSubview(testBrowserViewController.view)
        self.addChild(testBrowserViewController)

        testBrowserViewController.view.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor).isActive = true
        testBrowserViewController.view.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        testBrowserViewController.view.topAnchor.constraint(equalTo: topContainerView.topAnchor).isActive = true
        testBrowserViewController.view.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor).isActive = true

        testBrowserViewController.didMove(toParent: self)
    }

    
    func createBottomController() {
        
        let testBrowserViewController = TestBottomController()
        testBrowserViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        bottomContainerView.addSubview(testBrowserViewController.view)
        self.addChild(testBrowserViewController)

        testBrowserViewController.view.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor).isActive = true
        testBrowserViewController.view.bottomAnchor.constraint(equalTo: bottomContainerView.bottomAnchor).isActive = true
        testBrowserViewController.view.topAnchor.constraint(equalTo: bottomContainerView.topAnchor).isActive = true
        testBrowserViewController.view.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor).isActive = true

        testBrowserViewController.didMove(toParent: self)
    }
}
