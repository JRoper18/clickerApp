//
//  ViewController.swift
//  clickerGame
//
//  Created by Jack Roper on 7/22/16.
//  Copyright © 2016 Jack Roper. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var balanceLabel: UILabel!
    var balance : Int = 0;
    @IBOutlet weak var clickerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("updateBalanceLabel"), userInfo: nil, repeats: true)
        
        

    }
    func nextImage() -> String{
        let imageNames : [String] = ["cookie"]
        let randomIndex = Int(arc4random_uniform(UInt32(imageNames.count)));
        return imageNames[randomIndex];
    }
    @IBAction func onTap(sender: AnyObject) {
        clickerButton.setImage(UIImage(named: self.nextImage()),forState: UIControlState.Normal);
        balance += 1;
    }
    func updateBalanceLabel(){
        balanceLabel.text = String(balance);
    }
}

