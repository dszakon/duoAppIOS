//
//  HomeViewController.swift
//  DualApp
//
//  Created by Dejan Serafimov on 5.9.23.
//

import UIKit

class AppSelectionViewController: UIViewController {
    
    let applicationList = ["Camera" , "Phone", "Messages" , "Browser", "YouTube", "Weather"]

    @IBOutlet weak var applicationListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applicationListTableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCellIdentifier")
        applicationListTableView.reloadData()
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
}
