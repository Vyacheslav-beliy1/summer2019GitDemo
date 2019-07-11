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

		enum Films: String {
			case film1 = "Человек Паук"
			case film2 = "Алладин"
			case film3 = "Лысая гора"
		}

		let alert = UIAlertController(title: nil, message: "Choose Film", preferredStyle: .actionSheet)

		let handler:(_ type: Films) -> (UIAlertAction) -> Void =
		{ type in
			//sdf/asdf//asd/f/asdf/
			//asdfasdfasdf
			return { action in
				//asdf/asdf/as/df/asdf/a/sdf/asdf
				print(type.rawValue)
			}
		}

		let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
		alert.addAction(cancelAction)

		let film1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handler(.film1))
		alert.addAction(film1)

		let film2 = UIAlertAction(title: Films.film2.rawValue, style: .default, handler: handler(.film2))
		alert.addAction(film2)

		let film3 = UIAlertAction(title: Films.film3.rawValue, style: .default, handler: handler(.film3))
		alert.addAction(film3)

		present(alert, animated: true, completion: nil)
	}
}

