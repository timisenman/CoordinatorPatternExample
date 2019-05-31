//
//  ViewController.swift
//  CoordinatorExample
//
//  Created by Tim Isenman on 5/30/19.
//  Copyright © 2019 Timothy Isenman. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {

    weak var coordinator: (Buying & AccountCreating)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var buyAction: (() -> Void)?
    var createAccountAction: (() -> Void)?
   
    @IBAction func buyTapped(_ sender: Any) {
        print("Buy tapped")
        buyAction?()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        print("Create account tapped")
        createAccountAction?()
    }
    
    
}

