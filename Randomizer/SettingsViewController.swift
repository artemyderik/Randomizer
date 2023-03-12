//
//  SettingsViewController.swift
//  Randomizer
//
//  Created by Артемий Дериглазов on 12.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var maximumValueTextField: UITextField!
    @IBOutlet var minimumValueTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
}
