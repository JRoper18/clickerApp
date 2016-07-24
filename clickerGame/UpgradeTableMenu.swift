//
//  UpgradeTableMenu.swift
//  clickerGame
//
//  Created by Jack Roper on 7/23/16.
//  Copyright © 2016 Jack Roper. All rights reserved.
//

import UIKit

class UpgradeTableMenu: UITableViewController {
    let upgradeButtonValue : Int = 0;
    let upgrades : [Upgrade] = [Upgrade(cost: 10, upgrade: 1, image: "cookie", name: "Moar Cookies"), Upgrade(cost: 100, upgrade: 3, image: "cookie", name: "EVEN MOAR ")];
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upgrades.count
    }
    func upgradeCPS(sender: UIButton){
        let possibleUpgrade = upgrades[sender.tag]
        if(balance >= Double(possibleUpgrade.cost)){
            calPerSecond += possibleUpgrade.upgrade;
            balance -= Double(possibleUpgrade.cost);
        }
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        tableView.allowsSelection = false;
        let cell = tableView.dequeueReusableCellWithIdentifier("UpgradeTableCell", forIndexPath: indexPath) as! UpgradeTableCell
        let upgrade = upgrades[indexPath.row];
        cell.upgradeImageView.frame = CGRect(x: 0, y: 0, width: 90, height: 90)
        cell.upgradeImageView.image = UIImage(named: upgrade.image)
        cell.upgradeButton.tag = indexPath.row;
        cell.upgradeButton.addTarget(self, action: #selector(upgradeCPS(_:)),forControlEvents: UIControlEvents.TouchUpInside)
        cell.upgradeLabel.text = "+" + String(upgrade.upgrade) + " CPS";
        cell.costUpgradeLabel.text = "Cost: " + String(upgrade.cost);
        cell.upgradeNameLabel.text = upgrade.name;
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
