//
//  TableViewController.swift
//  SymptomResearchApp
//
//  Created by Viktor Van der Valk on 02/08/2017.
//  Copyright © 2017 Viktor Van der Valk. All rights reserved.
//

import UIKit




class TableViewController: UITableViewController {

    @IBOutlet var myTableView: UITableView!
    
    @IBOutlet weak var Symptom1Label: UILabel!
    @IBOutlet weak var Symptom1Switch: UISwitch!
    
    @IBOutlet weak var Symptom2Label: UILabel!
    @IBOutlet weak var Symptom2Switch: UISwitch!
    
    @IBOutlet weak var Symptom3Label: UILabel!
    @IBOutlet weak var Symptom3Switch: UISwitch!
    
    var symptoms: [String] = []
    var symptom1: [Int] = []
    var symptom2: [Int] = []
    var symptom3: [Int] = []
    
    
    @IBOutlet weak var Causes1Label: UILabel!
    @IBOutlet weak var Cause1Switch: UISwitch!
    
    @IBOutlet weak var Causes2Label: UILabel!
    @IBOutlet weak var Cause2Switch: UISwitch!
    
    @IBOutlet weak var Causes3Label: UILabel!
    @IBOutlet weak var Cause3Switch: UISwitch!
    
    @IBOutlet weak var Causes4Label: UILabel!
    @IBOutlet weak var Cause4Switch: UISwitch!
    
    @IBOutlet weak var Causes5Label: UILabel!
    @IBOutlet weak var Cause5Switch: UISwitch!
    
    var causes: [String] = []
    var cause1: [Int] = []
    var cause2: [Int] = []
    var cause3: [Int] = []
    var cause4: [Int] = []
    var cause5: [Int] = []
    

    
    @IBAction func submitButton(_ sender: Any) {
        
        if symptoms.count == 0 {
        symptom1 = []
        symptom2 = []
        symptom3 = []
        }
        else if symptoms.count == 1 {
            symptom2 = []
            symptom3 = []
        }
        else if symptoms.count == 2 {
            symptom3 = []
        }
        
        
        if symptoms.count > 0 {
        if Symptom1Switch.isOn {
            symptom1.append(1)
        }
        else {
            symptom1.append(0)
        }
        }
        
        if symptoms.count > 1 {
        if Symptom2Switch.isOn {
            symptom2.append(1)
        }
        else {
            symptom2.append(0)
        }
        }
        if symptoms.count > 2 {
        if Symptom3Switch.isOn {
            symptom3.append(1)
        }
        else {
            symptom3.append(0)
        }
        }
        
        UserDefaults.standard.set(symptom1, forKey: "symptom1")
        UserDefaults.standard.set(symptom2, forKey: "symptom2")
        UserDefaults.standard.set(symptom3, forKey: "symptom3")
        
        
        
        
        if causes.count == 0 {
            cause1 = []
            cause2 = []
            cause3 = []
            cause4 = []
            cause5 = []
        }
        else if causes.count == 1 {
            cause2 = []
            cause3 = []
            cause4 = []
            cause5 = []
        }
        else if causes.count == 2 {
            cause3 = []
            cause4 = []
            cause5 = []
        }
        else if causes.count == 3 {
            cause4 = []
            cause5 = []
        }
        else if causes.count == 4 {
            cause5 = []
        }
        
        if causes.count > 0 {
        if Cause1Switch.isOn {
            cause1.append(1)
        }
        else {
            cause1.append(0)
        }
        }
        if causes.count > 1 {
        if Cause2Switch.isOn {
            cause2.append(1)
        }
        else {
            cause2.append(0)
        }
        }
        if causes.count > 2 {
        if Cause3Switch.isOn {
            cause3.append(1)
        }
        else {
            cause3.append(0)
        }
        }
        if causes.count > 3 {
        if Cause4Switch.isOn {
            cause4.append(1)
        }
        else {
            cause4.append(0)
        }
        }
        if causes.count > 4 {
        if Cause5Switch.isOn {
            cause5.append(1)
        }
        else {
            cause5.append(0)
        }
        }
        
        UserDefaults.standard.set(cause1, forKey: "cause1")
        UserDefaults.standard.set(cause2, forKey: "cause2")
        UserDefaults.standard.set(cause3, forKey: "cause3")
        UserDefaults.standard.set(cause4, forKey: "cause4")
        UserDefaults.standard.set(cause5, forKey: "cause5")
        
        print(cause1)
        print(cause2)
        print(cause3)
        print(cause4)
        print(cause5)
        print(symptom1)
        print(symptom2)
        print(symptom3)
    }

    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let symptom1Object = UserDefaults.standard.object(forKey: "symptom1")
        if let tempSymptom1 = symptom1Object as? [Int] {
            symptom1 = tempSymptom1
        }
        let symptom2Object = UserDefaults.standard.object(forKey: "symptom2")
        if let tempSymptom2 = symptom2Object as? [Int] {
            symptom2 = tempSymptom2
        }
        let symptom3Object = UserDefaults.standard.object(forKey: "symptom3")
        if let tempSymptom3 = symptom3Object as? [Int] {
            symptom3 = tempSymptom3
        }
        let symptomsObject = UserDefaults.standard.object(forKey: "symptoms")
        if let tempSymptoms = symptomsObject as? [String] {
            symptoms = tempSymptoms
        }
        let cause1Object = UserDefaults.standard.object(forKey: "cause1")
        if let tempCause1 = cause1Object as? [Int] {
            cause1 = tempCause1
        }
        let cause2Object = UserDefaults.standard.object(forKey: "cause2")
        if let tempCause2 = cause2Object as? [Int] {
            cause2 = tempCause2
        }
        let cause3Object = UserDefaults.standard.object(forKey: "cause3")
        if let tempCause3 = cause3Object as? [Int] {
            cause3 = tempCause3
        }
        let cause4Object = UserDefaults.standard.object(forKey: "cause4")
        if let tempCause4 = cause4Object as? [Int] {
            cause4 = tempCause4
        }
        let cause5Object = UserDefaults.standard.object(forKey: "cause5")
        if let tempCause5 = cause5Object as? [Int] {
            cause5 = tempCause5
        }
        let causesObject = UserDefaults.standard.object(forKey: "causes")
        if let tempCauses = causesObject as? [String] {
            causes = tempCauses
        }
        
        
//        let symptomsObject = UserDefaults.standard.object(forKey: "symptoms")
//        if let tempSymptoms = symptomsObject as? [String] {
//            symptoms = tempSymptoms
//        }
        
        if symptoms.count > 0 {
            
        Symptom1Label.text = symptoms[0]
        }
        else {
            Symptom1Label.text = ""
            Symptom2Label.text = ""
            Symptom3Label.text = ""
        }
        if symptoms.count > 1 {
            
        Symptom2Label.text = symptoms[1]
        }
        else {
            Symptom2Label.text = ""
            Symptom3Label.text = ""
        }
        
        if symptoms.count > 2 {
        Symptom3Label.text = symptoms[2]
        }
        else {
            Symptom3Label.text = ""
        }
        print(symptoms)
        
//        let causesObject = UserDefaults.standard.object(forKey: "causes")
//        if let tempCauses = causesObject as? [String] {
//            causes = tempCauses
//        }
        
        if causes.count > 0 {
        Causes1Label.text = causes[0]
        }
        else {
            Causes1Label.text = ""
            Causes2Label.text = ""
            Causes3Label.text = ""
            Causes4Label.text = ""
            Causes5Label.text = ""
        }
        if causes.count > 1 {
        Causes2Label.text = causes[1]
        }
        else {
            Causes2Label.text = ""
            Causes3Label.text = ""
            Causes4Label.text = ""
            Causes5Label.text = ""
        }
        if causes.count > 2 {
        Causes3Label.text = causes[2]
        }
            
        else {
        Causes3Label.text = ""
        Causes4Label.text = ""
        Causes5Label.text = ""
        }
        
        if causes.count > 3 {
        Causes4Label.text = causes[3]
        }
        else {
            Causes4Label.text = ""
            Causes5Label.text = ""
        }
        if causes.count > 4 {
        Causes5Label.text = causes[4]
        }
        else {
            Causes5Label.text = ""
        }
        print(causes)
        
    }
//    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
//        
//        if editingStyle == UITableViewCellEditingStyle.delete {
//            
//            symptoms.remove(at: indexPath.row)
//            
//            
//            UserDefaults.standard.set(symptoms, forKey: "symptoms")
//            
//            viewDidAppear(true)
//            
//        }
//        
//    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        var rowCount = 0
        
        if section == 0 {
            rowCount = 3
        }
        if section == 1 {
            rowCount = 5
        }
        
        return rowCount
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        
        if editingStyle == .delete {
            // Delete the row from the data source
            if indexPath.section == 0 && indexPath.row < symptoms.count {
                symptoms.remove(at: indexPath.row)
                if indexPath.row == 0 {
                    symptom1 = symptom2
                    symptom2 = symptom3
                    symptom3 = []
                }
                else if indexPath.row == 1 {
                    symptom2 = symptom3
                    symptom3 = []
                }
                else if indexPath.row == 2 {
                    symptom3 = []
                }
            UserDefaults.standard.set(symptom1, forKey: "symptom1")
            UserDefaults.standard.set(symptom2, forKey: "symptom2")
            UserDefaults.standard.set(symptom3, forKey: "symptom3")
                
            UserDefaults.standard.set(symptoms, forKey: "symptoms")
            }
            
            else if indexPath.section == 1 && indexPath.row < causes.count {
            
                
                
                causes.remove(at: indexPath.row)
                if indexPath.row == 0 {
                    cause1 = cause2
                    cause2 = cause3
                    cause3 = cause4
                    cause4 = cause5
                    cause5 = []
                    
                }
                if indexPath.row == 1 {
                    cause2 = cause3
                    cause3 = cause4
                    cause4 = cause5
                    cause5 = []
                    
                }
                if indexPath.row == 2 {
                    cause3 = cause4
                    cause4 = cause5
                    cause5 = []
                }
                if indexPath.row == 3 {
                    cause4 = cause5
                    cause5 = []
                    
                }
                if indexPath.row == 4 {
                    cause5 = []
                    
                }
                
                UserDefaults.standard.set(cause1, forKey: "cause1")
                UserDefaults.standard.set(cause2, forKey: "cause2")
                UserDefaults.standard.set(cause3, forKey: "cause3")
                UserDefaults.standard.set(cause4, forKey: "cause4")
                UserDefaults.standard.set(cause5, forKey: "cause5")
                UserDefaults.standard.set(causes, forKey: "causes")
               
            }
        
                viewDidAppear(true)
            print(cause1)
            print(cause2)
            print(cause3)
            print(cause4)
            print(cause5)
            print(symptom1)
            print(symptom2)
            print(symptom3)
            
            
            
        //} else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
