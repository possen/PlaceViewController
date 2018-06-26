//
//  ViewController.swift
//  DelayedInitiailzerViewController
//
//  Created by Paul Ossenbruggen on 6/25/18.
//  Copyright © 2018 Paul Ossenbruggen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bigbutton: UIButton!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var counterLabel: UILabel!
    lazy var place = Place(counter: 0, info: "")

    struct Place {
        var counter: Int
        var info: String
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(place.counter)
        print(place.info)
        update()
    }

    @IBAction func pressed(_ sender: Any) {
        place.counter += 1
        place.info += "*"
        update()
    }

    func update() {
        info.text = place.info
        counterLabel.text = String(place.counter)
    }
}

