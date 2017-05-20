//
//  InfoTableViewController.swift
//  jipuri-client
//
//  Created by 永井陽太 on 2017/05/21.
//  Copyright © 2017年 永井陽太. All rights reserved.
//

import UIKit

class InfoTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var infoTable: UITableView!
    
    let infos: NSArray = ["hoge1", "hoge2", "hoge3", "hoge4", "hoge5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoTable.delegate = self
        infoTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "InfoCell", for: indexPath)
        
        let label1 = tableView.viewWithTag(1) as! UILabel
        label1.text = "No.\(indexPath.row) title"
        
        let label2 = tableView.viewWithTag(2) as! UILabel
        label2.text = "\(infos[indexPath.row])"
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
