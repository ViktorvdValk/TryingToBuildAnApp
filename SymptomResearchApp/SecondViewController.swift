//
//  SecondViewController.swift
//  SymptomResearchApp
//
//  Created by Viktor Van der Valk on 02/08/2017.
//  Copyright © 2017 Viktor Van der Valk. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    @IBOutlet weak var textFieldSymptom: UITextField!

    @IBAction func addSymptom(_ sender: Any) {
        
        let symptomsObject = UserDefaults.standard.object(forKey: "symptoms")
        var symptoms:[String]
        if let tempSymptoms = symptomsObject as? [String] {
            
            symptoms = tempSymptoms
        
            if symptoms.count < 3 {
            symptoms.append(textFieldSymptom.text!)
            }
            
        } else {
            
            symptoms = [textFieldSymptom.text!]
            
        }
        
        UserDefaults.standard.set(symptoms, forKey: "symptoms")
        textFieldSymptom.text = ""
        
    }
    
    
    
    @IBOutlet weak var textFieldCause: UITextField!
    
    @IBAction func addCause(_ sender: Any) {
        
        let causesObject = UserDefaults.standard.object(forKey: "causes")
        var causes:[String]
        if let tempCauses = causesObject as? [String] {
            causes = tempCauses
            
            if causes.count < 5 {
            causes.append(textFieldCause.text!)
            }
            
        } else {
            causes = [textFieldCause.text!]
        }
        UserDefaults.standard.set(causes, forKey: "causes")
        textFieldCause.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

