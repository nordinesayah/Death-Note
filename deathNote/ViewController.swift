//
//  ViewController.swift
//  deathNote
//
//  Created by Nordine Sayah on 21/09/2018.
//  Copyright © 2018 Nordine Sayah. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Death Note"
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CustomCell.shared.name.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "descriptionCell") as! TableViewCell
        cell.nameLbl.text = CustomCell.shared.name[indexPath.row]
        cell.dateLbl.text = CustomCell.shared.date[indexPath.row]
        cell.descriptionLbl.text = CustomCell.shared.description[indexPath.row]
        
        return cell
    }
}

