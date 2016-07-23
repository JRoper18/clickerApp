//
//  UpgradeTableMenu.swift
//  clickerGame
//
//  Created by Jack Roper on 7/23/16.
//  Copyright © 2016 Jack Roper. All rights reserved.
//

import UIKit

class UpgradeTableMenu: UITableViewController {
    let upgrades : [Upgrade] = [Upgrade(cost: 10, upgrade: 1, image: "cookie", name: "Moar Cookies")];
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upgrades.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        tableView.allowsSelection = false;
        let cell = tableView.dequeueReusableCellWithIdentifier("UpgradeTableCell", forIndexPath: indexPath) as! UpgradeTableCell
        let upgrade = upgrades[indexPath.row];
        cell.upgradeImageView.frame = CGRect(x: 0, y: 0, width: 75, height: 75)
        cell.upgradeImageView.image = UIImage(named: upgrade.image)
        cell.upgradeLabel.text = "+" + String(upgrade.upgrade) + " CPS";
        cell.costUpgradeLabel.text = "Cost: " + String(upgrade.cost);
        cell.selectionStyle = UITableViewCellSelectionStyle.None;
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
