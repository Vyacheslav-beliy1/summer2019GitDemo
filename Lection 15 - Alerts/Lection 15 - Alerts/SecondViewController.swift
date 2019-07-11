//
//  SecondViewController.swift
//  Lection 15 - Alerts
//
//  Created by Sergey Titov on 7/11/19.
//  Copyright © 2019 Viacheslav Bilyi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    @IBAction func NextButton(_ sender: Any) {
      
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewControllerThree")
        self.present(vc, animated: true)
        
    }
    
    
    
    
    @IBAction func PreviousButton(_ sender: Any) {
      
        self.dismiss(animated: true, completion: nil)
    }
}
