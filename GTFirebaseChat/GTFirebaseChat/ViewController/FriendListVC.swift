//
//  FriendListVC.swift
//  GTFirebaseChat
//
//  Created by Tarungiri Gosai on 11/07/17.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

import UIKit

class FriendListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - TableView Delegate Method
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")!
        
        cell.selectionStyle = .none
        return cell
    }

}
