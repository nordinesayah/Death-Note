//
//  addPerson.swift
//  deathNote
//
//  Created by Nordine Sayah on 21/09/2018.
//  Copyright © 2018 Nordine Sayah. All rights reserved.
//

import UIKit

class AddPersonViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var descriptionText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Add a Person"
        textField.delegate = self
        descriptionText.delegate = self
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneTouch))
        
        descriptionText.layer.borderColor = UIColor.black.cgColor
        descriptionText.layer.borderWidth = 1.0
        descriptionText.textColor = UIColor.black
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        return false
    }
    
    func convertDate() -> String {
        let date = datePicker.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM y HH:mm:ss"
        let dateStr = dateFormatter.string(from:date as Date)
        
        return dateStr
    }
    
    @objc func doneTouch() {
        
        // Ajouter peut-être sauté les espaces début de chaine
        
        if textField.text != "" {
            CustomCell.shared.name.append(textField.text!)
            CustomCell.shared.date.append(convertDate())
            CustomCell.shared.description.append(descriptionText.text)
        }
        
        print("Name victim = \(textField.text!)")
        print("date = \(datePicker.date.description)")
        print("Description death = \(descriptionText.text!)")
        
        self.navigationController?.popViewController(animated: true)
    }
}
