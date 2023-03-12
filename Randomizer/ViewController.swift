//
//  ViewController.swift
//  Randomizer
//
//  Created by Артемий Дериглазов on 12.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    
    @IBOutlet var getRundomNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsViewController = segue.destination as? SettingsViewController else { return }
        settingsViewController.minimumValueAgent = minimumValueLabel.text
        settingsViewController.maximumValueAgent = maximumValueLabel.text
    }
    
    
    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 0
        
        if minimumNumber < maximumNumber{
            randomValueLabel.text = Int.random(
                in: minimumNumber...maximumNumber
            ).formatted()
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        minimumValueLabel.text = settingsVC.minimumValueTextField.text
        maximumValueLabel.text = settingsVC.maximumValueTextField.text
    }
}


