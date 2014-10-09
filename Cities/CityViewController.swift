//
//  CityViewController.swift
//  Cities
//
//  Created by Laura Savino on 10/9/14.
//  Copyright (c) 2014 Laura Savino. All rights reserved.
//

import Foundation
import UIKit

class CityViewController: UIViewController {
	var imageName: String?

	@IBOutlet weak var imageView: UIImageView!

	override func loadView() {
		super.loadView()

		if imageName != nil {
			imageView.image = UIImage(named: imageName!)
		}
	}
}
