//
//  UpgradeTableMenu.swift
//  clickerGame
//
//  Created by Jack Roper on 7/23/16.
//  Copyright © 2016 Jack Roper. All rights reserved.
//

import UIKit

class UpgradeTableMenu: UITableViewController {
    let upgrades : [Upgrade] = [Upgrade(cost: 100, upgrade: 1, image: "cookie")];
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upgrades.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UpgradeTableCell", forIndexPath: indexPath) as! UpgradeTableCell
        let upgrade = upgrades[indexPath.row];
        cell.upgradeLabel.text = String(upgrade.upgrade);
        cell.costUpgradeLabel.text = String(upgrade.cost);
        cell.upgradeImageView.image = UIImage(named: upgrade.image)
        
        return cell
    }
    override func viewDidLoad() {
        super.viewDidLoad();
        
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        //Return number of sections
        return 1
    }
    
}
