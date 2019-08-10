//
//  ViewController.swift
//  TableView_Assignment_W2
//
//  Created by SC414 on 8/10/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tbvFriendList: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tbvFriendList.dataSource = self
        
        let nib = UINib(nibName: FriendListTableViewCell.identifier, bundle: nil)
        
        tbvFriendList.register(nib, forCellReuseIdentifier: FriendListTableViewCell.identifier)
        
        tbvFriendList.contentInset = UIEdgeInsets(top: 2, left: 0, bottom: 6, right: 0)
        
        tbvFriendList.tableFooterView = UIView()

        
    }


}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: FriendListTableViewCell.identifier, for: indexPath) as! FriendListTableViewCell
        
        return cell
        
        
    }
    
    
    
    
}

