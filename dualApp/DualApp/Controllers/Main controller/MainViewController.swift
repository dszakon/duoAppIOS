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
               
        createTopAppSelectionController()
        createBottomAppSelectionController()
    }

    func createTopAppSelectionController() {
        let appSelectionControllerTop = AppSelectionViewController.instanceController { selectedAppName in
            self.createTopController()
        }
        
        appSelectionControllerTop.view.translatesAutoresizingMaskIntoConstraints = false
        topContainerView.addSubview(appSelectionControllerTop.view)
        self.addChild(appSelectionControllerTop)

        appSelectionControllerTop.view.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor).isActive = true
        appSelectionControllerTop.view.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        appSelectionControllerTop.view.topAnchor.constraint(equalTo: topContainerView.topAnchor).isActive = true
        appSelectionControllerTop.view.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor).isActive = true
        appSelectionControllerTop.didMove(toParent: self)
    }
    
    func createBottomAppSelectionController() {
        let appSelectionControllerTop = AppSelectionViewController.instanceController { selectedAppName in
            self.createBottomController()
        }
        
        appSelectionControllerTop.view.translatesAutoresizingMaskIntoConstraints = false
        bottomContainerView.addSubview(appSelectionControllerTop.view)
        self.addChild(appSelectionControllerTop)

        appSelectionControllerTop.view.leadingAnchor.constraint(equalTo: bottomContainerView.leadingAnchor).isActive = true
        appSelectionControllerTop.view.bottomAnchor.constraint(equalTo: bottomContainerView.bottomAnchor).isActive = true
        appSelectionControllerTop.view.topAnchor.constraint(equalTo: bottomContainerView.topAnchor).isActive = true
        appSelectionControllerTop.view.trailingAnchor.constraint(equalTo: bottomContainerView.trailingAnchor).isActive = true
        appSelectionControllerTop.didMove(toParent: self)
    }
    
    func createTopController() {
        
        let storyboard = UIStoryboard(name: "WebViewController", bundle: nil)
        let testBrowserViewController = storyboard.instantiateViewController(withIdentifier: "WebViewController") as! WebViewController
        testBrowserViewController.closeCompletionHandler = {
            testBrowserViewController.view.removeFromSuperview()
            testBrowserViewController.didMove(toParent: nil)
        }

        testBrowserViewController.view.translatesAutoresizingMaskIntoConstraints = false
        testBrowserViewController.view.backgroundColor = .green
        
        topContainerView.addSubview(testBrowserViewController.view)
        self.addChild(testBrowserViewController)

        testBrowserViewController.view.leadingAnchor.constraint(equalTo: topContainerView.leadingAnchor).isActive = true
        testBrowserViewController.view.bottomAnchor.constraint(equalTo: topContainerView.bottomAnchor).isActive = true
        testBrowserViewController.view.topAnchor.constraint(equalTo: topContainerView.topAnchor).isActive = true
        testBrowserViewController.view.trailingAnchor.constraint(equalTo: topContainerView.trailingAnchor).isActive = true

        testBrowserViewController.didMove(toParent: self)
    }

    
    func createBottomController() {
        
        let storyboard = UIStoryboard(name: "NotesViewController", bundle: nil)
        let testBrowserViewController = storyboard.instantiateViewController(withIdentifier: "NotesViewController") as! NotesViewController
        
        testBrowserViewController.closeCompletionHandler = {
            testBrowserViewController.view.removeFromSuperview()
            testBrowserViewController.didMove(toParent: nil)
        }
        testBrowserViewController.view.backgroundColor = .red
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
