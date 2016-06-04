//
//  ViewController.swift
//  RedOctober
//
//  Created by Matteo Crippa on 06/04/2016.
//  Copyright (c) 2016 Matteo Crippa. All rights reserved.
//

import RedOctober
import UIKit

class ViewController: UIViewController {

    let rd = RedOctober()

    @IBAction func startBroadcasting() {
        rd.startBroadcasting("dummy1234567890")
    }

    @IBAction func startListening() {
        rd.startListening()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
