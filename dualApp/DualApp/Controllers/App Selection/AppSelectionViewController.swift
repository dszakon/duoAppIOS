//
//  HomeViewController.swift
//  DualApp
//
//  Created by Dejan Serafimov on 5.9.23.
//

import UIKit

class AppSelectionViewController: UIViewController {
    
    let applicationList = ["Notes", "Camera" , "Phone", "Messages" , "Browser", "YouTube", "Weather", "Health App", "Linkedin"]

    var applicationSelectionCompletion: ((String) -> Void)?
    
    @IBOutlet weak var applicationListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applicationListTableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCellIdentifier")
        applicationListTableView.reloadData()
    }
    
    static func instanceController(completion: ((String) -> Void)?) -> AppSelectionViewController {
        let controller = AppSelectionViewController(nibName: "AppSelectionViewController", bundle: nil)
        controller.applicationSelectionCompletion = completion
        return controller
    }
}

extension AppSelectionViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        applicationList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCellIdentifier", for: indexPath)

        cell.textLabel?.text = applicationList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let appSelected = applicationList[indexPath.row]
        applicationSelectionCompletion?(appSelected)
    }
}
