//
//  ViewController.swift
//  MultipleSectionDifferentDesign
//
//  Created by siddharth on 18/12/18.
//  Copyright © 2018 clarionTechnologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var groupedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupedTableView.delegate = self
        groupedTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 4
        }else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section  == 0 {
            let cell: Table1TableViewCell = tableView.dequeueReusableCell(withIdentifier: "type1Cell", for: indexPath) as! Table1TableViewCell
            cell.imageView!.image = UIImage(named: "1.jpeg")
            cell.cellTitleLabel!.text = "Header " + "\(indexPath.section)"+"-"+"\(indexPath.row)"
            cell.cellSubstituteLabel.text = "Details " + "\(indexPath.section)"+"-"+"\(indexPath.row)"
            return cell
        }
        else {
            let cell: Table2TableViewCell = tableView.dequeueReusableCell(withIdentifier: "type2Cell", for: indexPath) as! Table2TableViewCell
           
            cell.cellTitleLabel!.text = "Header " + "\(indexPath.section)"+"-"+"\(indexPath.row)"
            cell.cellSubstituteLabel.text = "Details " + "\(indexPath.section)"+"-"+"\(indexPath.row)"
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if (indexPath.section == 0 && indexPath.row == 0){
            return 50
        }
        return UITableView.automaticDimension 
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

