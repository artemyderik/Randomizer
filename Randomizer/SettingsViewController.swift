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
    
    var maximumValueAgent: String!
    var minimumValueAgent: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        maximumValueTextField.text = maximumValueAgent
        minimumValueTextField.text = minimumValueAgent

    }
    
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
}

