//
//  ViewController.swift
//  CircularProgressView
//
//  Created by Teja on 3/23/18.
//  Copyright © 2018 Teja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var circularView:CircularProgressView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circularView.valuesArray = [07.0,120.0,25.23,70.25]
        circularView.colorArray = [UIColor.blue,UIColor.red,UIColor.green,UIColor.brown]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

