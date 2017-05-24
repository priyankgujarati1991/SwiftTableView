//
//  ViewController.swift
//  swiftdemo
//
//  Created by Priyank on 11/05/17.
//  Copyright © 2017 Priyank. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tbl: UITableView!
    
    var arr = [String]()
    
    let cellidentifier = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        arr = ["Apple","Mango","Orange","Banana"]
        tbl.delegate = self
        tbl.dataSource = self
        tbl.register(UITableViewCell.self, forCellReuseIdentifier: cellidentifier)
    
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tbl.dequeueReusableCell(withIdentifier:cellidentifier)
        
        if cell == nil  {
            cell = UITableViewCell(style: .default, reuseIdentifier:cellidentifier)
        }
        cell?.textLabel?.text = arr[indexPath.row]
//        cell!.backgroundColor = UIColor .green
        
        return cell!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

