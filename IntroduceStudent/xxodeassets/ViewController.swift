//
//  ViewController.swift
//  IntroduceStudent
//
//  Created by William Lau on 2/4/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let firstName = firstNameTextField.text ?? ""
        let lastName = lastNameTextField.text ?? ""
        let schoolName = schoolNameTextField.text ?? ""
        let yearIndex = yearSegmentedControl.selectedSegmentIndex
        let year = yearSegmentedControl.titleForSegment(at: yearIndex) ?? ""
        let numberOfPets = numberOfPetsLabel.text ?? "0"
            
        // Convert the boolean value to a string representation
        let wantsMorePets = morePetsSwitch.isOn ? "true" : "false"
                
        let introduction = "My name is \(firstName) \(lastName) and I attend \(schoolName). I am currently in my \(year) year and I own \(numberOfPets) pets. It is \(wantsMorePets) that I want more pets."
                
        print(introduction)
            
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

