//
//  ViewController.swift
//  Digital Watch (Switch)
//
//  Created by D7703_08 on 2018. 4. 10..
//  Copyright © 2018년 D7703_08. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timerSwitch: UISwitch!
    var myTimer = Timer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        timerSwitch.setOn(false, animated: true)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        timeLabel.text = formatter.string(from: date)
        //        timeLabel.text = String(describing: date)
    }
  
   
    @IBAction func timerStart(_ sender: UISwitch) {
        if timerSwitch.isOn == true {
            
            myTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: {(myTimer) in
                self.updateTime()
            })
            
        } else {
            myTimer.invalidate()
            
        }
    }
}
    


