//
//  ViewController.swift
//  Lection 15 - Alerts
//
//  Created by Viacheslav Bilyi on 7/8/19.
//  Copyright © 2019 Viacheslav Bilyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}

	@IBAction func showAlert() {
		let alert = UIAlertController(title: "Photo Access", message: "Do you alow to use your photos?", preferredStyle: .alert)

		let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
		alert.addAction(okAction)

		let cancelAcion = UIAlertAction(title: "Cancel", style: .default, handler: nil)
		alert.addAction(cancelAcion)

		present(alert, animated: true, completion: nil)
	}

	@IBAction func showActionSheet() {
	}
}

