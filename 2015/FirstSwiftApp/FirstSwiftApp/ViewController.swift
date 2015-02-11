//
//  ViewController.swift
//  FirstSwiftApp
//
//  Created by test5d on 15/2/11.
//  Copyright (c) 2015年 test5d. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHello: UILabel!
    
    @IBOutlet weak var txtName: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnHelloClicked(sender: UIButton) {
        self.lblHello.text = "你好 \(self.txtName.text)"
        self.txtName.text = ""
    }
}

