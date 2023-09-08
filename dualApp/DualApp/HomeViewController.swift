//
//  HomeViewController.swift
//  DualApp
//
//  Created by Dejan Serafimov on 5.9.23.
//

import UIKit

class HomeViewController: UIViewController {
    
    let appData = ["Camera" , "Phone", "Messages" , "Browser", "YouTube", "Weather"]

    @IBOutlet weak var firstTableView: UITableView!
    @IBOutlet weak var secondFirstView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstTableView.delegate = self
        firstTableView.dataSource = self
        secondFirstView.delegate = self
        secondFirstView.dataSource = self
        firstTableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCellIdentifier")
        secondFirstView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCellIdentifier")
        
        // Do any additional setup after loading the view.
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        appData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCellIdentifier", for: indexPath)


        cell.textLabel?.text = appData[indexPath.row]
        return cell
    }
}
