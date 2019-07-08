//
//  ViewController.swift
//  Lection_15_Alerts
//
//  Created by Ксения on 7/8/19.
//  Copyright © 2019 Zhdanova Ksysha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Photo Access", message: "Do you?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alert.addAction(okAction)
        
        let cencelAction = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(cencelAction)
        
        present(alert, animated: true, completion: nil)
    }
    @IBAction func showAlertSheet(_ sender: Any) {
        
    }
    
}

