//
//  ViewController.swift
//  Cities
//
//  Created by Laura Savino on 10/9/14.
//  Copyright (c) 2014 Laura Savino. All rights reserved.
//

import UIKit

class CitiesTableViewController: UITableViewController {

	let cities = [
		City(name: "Seattle", imageName: "seattle-skyline"),
		City(name: "Sydney", imageName: "sydney-opera-house"),
	]

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
		if let selectedPath = self.tableView.indexPathForSelectedRow() {
			let city = cities[selectedPath.row]
			if let destination = segue.destinationViewController as? CityViewController {
				destination.imageName = city.imageName
			}
		}
	}
}

extension CitiesTableViewController: UITableViewDataSource {

	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return cities.count
	}

	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("CityCellIdentifier") as UITableViewCell
		let city = cities[indexPath.row]

		if let textLabel = cell.textLabel {
			textLabel.text = city.name
		}

		return cell

	}
}

