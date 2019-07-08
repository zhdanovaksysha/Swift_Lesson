//
//  ViewController.swift
//  Lection_15_Alerts
//
//  Created by Ксения on 7/8/19.
//  Copyright © 2019 Zhdanova Ksysha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Films: String {
        case film1 = "Человек паук"
        case film2 = "Алладин"
    }

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
        let alert = UIAlertController(title: nil, message: "Choose film", preferredStyle: .actionSheet)
        
        let handler : (_ type: Films) -> (UIAlertAction) -> Void = { type in
        {action in
            print(type.rawValue)
            }
            
        }
        
        let cencelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cencelAction)
        
        let film1 = UIAlertAction(title: "Человек паук", style: .default, handler: handler(.film1))
        alert.addAction(film1)
        
        let film2 = UIAlertAction(title: "Алладин", style: .default, handler: handler(.film2))
        alert.addAction(film2)
        
         present(alert, animated: true, completion: nil)
    }
    
}

