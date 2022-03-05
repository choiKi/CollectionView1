//
//  TableViewController.swift
//  CollectionView1
//
//  Created by 최기훈 on 2022/01/25.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    let arrayList: [String] = ["사과","바나나","딸기","메론","오렌지"]
    let imageList: [String] = ["사과","바나나","딸기","메론","오렌지"]
    let identifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = arrayList[indexPath.row]
        cell.imageView?.image = UIImage(named: imageList[indexPath.row])
        
        return cell
        
    }
    

 
}
