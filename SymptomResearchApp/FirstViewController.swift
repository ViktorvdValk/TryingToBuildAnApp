//
//  FirstViewController.swift
//  SymptomResearchApp
//
//  Created by Viktor Van der Valk on 02/08/2017.
//  Copyright © 2017 Viktor Van der Valk. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var symptom1Label: UILabel!
    @IBOutlet weak var symptom2Label: UILabel!
    @IBOutlet weak var symptom3Label: UILabel!
    
    @IBOutlet weak var cause1Label: UILabel!
    @IBOutlet weak var cause2Label: UILabel!
    @IBOutlet weak var cause3Label: UILabel!
    @IBOutlet weak var cause4Label: UILabel!
    @IBOutlet weak var cause5Label: UILabel!

    @IBOutlet weak var symptom1Label2: UILabel!
    @IBOutlet weak var symptom2Label2: UILabel!
    @IBOutlet weak var symptom3Label2: UILabel!
    
    @IBOutlet weak var cause1Label2: UILabel!
    @IBOutlet weak var cause2Label2: UILabel!
    @IBOutlet weak var cause3Label2: UILabel!
    @IBOutlet weak var cause4Label2: UILabel!
    @IBOutlet weak var cause5Label2: UILabel!
    
    @IBOutlet weak var symptom1Label3: UILabel!
    @IBOutlet weak var symptom2Label3: UILabel!
    @IBOutlet weak var symptom3Label3: UILabel!
    
    @IBOutlet weak var cause1Label3: UILabel!
    @IBOutlet weak var cause2Label3: UILabel!
    @IBOutlet weak var cause3Label3: UILabel!
    @IBOutlet weak var cause4Label3: UILabel!
    @IBOutlet weak var cause5Label3: UILabel!
    
    @IBOutlet weak var symptom1Label4: UILabel!
    @IBOutlet weak var symptom2Label4: UILabel!
    @IBOutlet weak var symptom3Label4: UILabel!
    
    @IBOutlet weak var cause1Label4: UILabel!
    @IBOutlet weak var cause2Label4: UILabel!
    @IBOutlet weak var cause3Label4: UILabel!
    @IBOutlet weak var cause4Label4: UILabel!
    @IBOutlet weak var cause5Label4: UILabel!

    
    @IBOutlet weak var result11: UILabel!
    @IBOutlet weak var result12: UILabel!
    @IBOutlet weak var result13: UILabel!
    @IBOutlet weak var result14: UILabel!
    @IBOutlet weak var result15: UILabel!
   
    @IBOutlet weak var result21: UILabel!
    @IBOutlet weak var result22: UILabel!
    @IBOutlet weak var result23: UILabel!
    @IBOutlet weak var result24: UILabel!
    @IBOutlet weak var result25: UILabel!
    
    @IBOutlet weak var result31: UILabel!
    @IBOutlet weak var result32: UILabel!
    @IBOutlet weak var result33: UILabel!
    @IBOutlet weak var result34: UILabel!
    @IBOutlet weak var result35: UILabel!
    
    @IBOutlet weak var result211: UILabel!
    @IBOutlet weak var result212: UILabel!
    @IBOutlet weak var result213: UILabel!
    @IBOutlet weak var result214: UILabel!
    @IBOutlet weak var result215: UILabel!
    
    @IBOutlet weak var result221: UILabel!
    @IBOutlet weak var result222: UILabel!
    @IBOutlet weak var result223: UILabel!
    @IBOutlet weak var result224: UILabel!
    @IBOutlet weak var result225: UILabel!

    @IBOutlet weak var result231: UILabel!
    @IBOutlet weak var result232: UILabel!
    @IBOutlet weak var result233: UILabel!
    @IBOutlet weak var result234: UILabel!
    @IBOutlet weak var result235: UILabel!
    
    @IBOutlet weak var results1y: UILabel!
    @IBOutlet weak var results2y: UILabel!
    @IBOutlet weak var results3y: UILabel!
    
    @IBOutlet weak var resultc1y: UILabel!
    @IBOutlet weak var resultc2y: UILabel!
    @IBOutlet weak var resultc3y: UILabel!
    @IBOutlet weak var resultc4y: UILabel!
    @IBOutlet weak var resultc5y: UILabel!
    
    @IBOutlet weak var results1n: UILabel!
    @IBOutlet weak var results2n: UILabel!
    @IBOutlet weak var results3n: UILabel!
    
    @IBOutlet weak var resultc1n: UILabel!
    @IBOutlet weak var resultc2n: UILabel!
    @IBOutlet weak var resultc3n: UILabel!
    @IBOutlet weak var resultc4n: UILabel!
    @IBOutlet weak var resultc5n: UILabel!
    
    var symptomNames: [String] = []
    var symptoms: [String] = []
    var symptom1: [Int] = []
    var symptom2: [Int] = []
    var symptom3: [Int] = []

    var causeNames : [String] = []
    var causes: [String] = []
    var cause1: [Int] = []
    var cause2: [Int] = []
    var cause3: [Int] = []
    var cause4: [Int] = []
    var cause5: [Int] = []
    
    
    var resultsS1 : [Float] = []
    var resultsS2 : [Float] = []
    var resultsS3 : [Float] = []
    var resultsY : [Int] = []
    var resultsN : [Int] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

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
        
        let symptomNamesObject = UserDefaults.standard.object(forKey: "symptoms")
        if let tempSymptomNames = symptomNamesObject as? [String] {
            symptomNames = tempSymptomNames
        }
        if symptomNames.count > 0 {
            symptom1Label.text = symptomNames[0]
            symptom1Label2.text = symptomNames[0]
            symptom1Label3.text = symptomNames[0]
            symptom1Label4.text = symptomNames[0]
        }
        else {
            symptom1Label.text = ""
            symptom1Label2.text = ""
            symptom1Label3.text = ""
            symptom1Label4.text = ""
        }
        if symptomNames.count > 1 {
            symptom2Label.text = symptomNames[1]
            symptom2Label2.text = symptomNames[1]
            symptom2Label3.text = symptomNames[1]
            symptom2Label4.text = symptomNames[1]
        }
        else {
            symptom2Label.text = ""
            symptom2Label2.text = ""
            symptom2Label3.text = ""
            symptom2Label4.text = ""
        }
        if symptomNames.count > 2 {
            symptom3Label.text = symptomNames[2]
            symptom3Label2.text = symptomNames[2]
            symptom3Label3.text = symptomNames[2]
            symptom3Label4.text = symptomNames[2]
        }
        else {
            symptom3Label.text = ""
            symptom3Label2.text = ""
            symptom3Label3.text = ""
            symptom3Label4.text = ""
        }
        
        let causeNamesObject = UserDefaults.standard.object(forKey: "causes")
        if let tempCauseNames = causeNamesObject as? [String] {
            causeNames = tempCauseNames
        }
        if causeNames.count > 0 {
            cause1Label.text = causeNames[0]
            cause1Label2.text = causeNames[0]
            cause1Label3.text = causeNames[0]
            cause1Label4.text = causeNames[0]
        }
        else {
            cause1Label.text = ""
            cause1Label2.text = ""
            cause1Label3.text = ""
            cause1Label4.text = ""
        }
        if causeNames.count > 1 {
            cause2Label.text = causeNames[1]
            cause2Label2.text = causeNames[1]
            cause2Label3.text = causeNames[1]
            cause2Label4.text = causeNames[1]
        }
        else {
            cause2Label.text = ""
            cause2Label2.text = ""
            cause2Label3.text = ""
            cause2Label4.text = ""
        }
        if causeNames.count > 2 {
            cause3Label.text = causeNames[2]
            cause3Label2.text = causeNames[2]
            cause3Label3.text = causeNames[2]
            cause3Label4.text = causeNames[2]
        }
        else {
            cause3Label.text = ""
            cause3Label2.text = ""
            cause3Label3.text = ""
            cause3Label4.text = ""
        }
        if causeNames.count > 3 {
            cause4Label.text = causeNames[3]
            cause4Label2.text = causeNames[3]
            cause4Label3.text = causeNames[3]
            cause4Label4.text = causeNames[3]
        }
        else {
            cause4Label.text = ""
            cause4Label2.text = ""
            cause4Label3.text = ""
            cause4Label4.text = ""
        }
        if causeNames.count > 4 {
            cause5Label.text = causeNames[4]
            cause5Label2.text = causeNames[4]
            cause5Label3.text = causeNames[4]
            cause5Label4.text = causeNames[4]
        }
        else {
            cause5Label.text = ""
            cause5Label2.text = ""
            cause5Label3.text = ""
            cause5Label4.text = ""
        }
 
        
        // Set Symptoms and Causes
        var results = [[[Float]]](repeating:[[Float]](repeating:[Float](repeating:0,count:5), count:3), count:2)
        
        
        
        symptom1 = symptom1.reversed()
        symptom2 = symptom2.reversed()
        symptom3 = symptom3.reversed()
        
        cause1 = cause1.reversed()
        cause2 = cause2.reversed()
        cause3 = cause3.reversed()
        cause4 = cause4.reversed()
        cause5 = cause5.reversed()
        
        var allSymptoms = [symptom1, symptom2, symptom3]
        var allCauses = [cause1, cause2, cause3, cause4, cause5]

        for d in 0...1 {
        for z in 0...2 {
        for y in 0...4 {
        if allSymptoms[z].count > 0 && allCauses[y].count > (0 + d) {
        
        if (allSymptoms[z].count + d) > allCauses[y].count {
            
            for x in 0...(allCauses[y].count-1-d) {
            
            if allSymptoms[z][x] == allCauses[y][x+d] {
                results[d][z][y] += 1
        }
        }
            
            results[d][z][y] = 10*results[d][z][y]/Float(allCauses[y].count-d)
        }
            else {
                
            for x in 0...(allSymptoms[z].count-1) {
            
            if allSymptoms[z][x] == allCauses[y][x+d] {
                results[d][z][y] += 1
            }
            }
            results[d][z][y] = 10*results[d][z][y]/Float(allSymptoms[z].count)
            }
            }
        }
        }
        }
        
        resultsY = [0,0,0,0,0,0,0,0]
        resultsN = [0,0,0,0,0,0,0,0]
        
        // Symptom Days in A Row
        for z in 0...2 {
            if allSymptoms[z].count > 0 {
            for x in 0...(allSymptoms[z].count-1) {
                if allSymptoms[z][x] == 0 {
                    resultsY[z] = x
                    break
                }
                    else if x == allSymptoms[z].count - 1 {
                        resultsY[z] = (x + 1)
        }
        }
            for x in 0...(allSymptoms[z].count-1) {
                if allSymptoms[z][x] == 1 {
                    resultsN[z] = x
                    break
        }
                else if x == allSymptoms[z].count - 1 {
                    resultsN[z] = (x + 1)
            }
                }
        }
        }
        
        for z in 0...4 {
            if allCauses[z].count > 0 {
            for x in 0...(allCauses[z].count - 1) {
                if allCauses[z][x] == 0 {
                    resultsY[z + 3] = x
                    break
                }
                else if x == allCauses[z].count - 1 {
                    resultsY[z + 3] = (x + 1)
                }
            }
            for x in 0...(allCauses[z].count - 1) {
                if allCauses[z][x] == 1 {
                    resultsN[z + 3] = x
                    break
                }
                else if x == allCauses[z].count - 1 {
                    resultsN[z + 3] = (x + 1)
            }
                }
        }
        }
        print(resultsN)
        print(resultsY)
        
        UserDefaults.standard.set(results, forKey: "results")
        
        result11.text = String(Int(round(results[0][0][0])))
        result12.text = String(Int(round(results[0][0][1])))
        result13.text = String(Int(round(results[0][0][2])))
        result14.text = String(Int(round(results[0][0][3])))
        result15.text = String(Int(round(results[0][0][4])))
        
        result21.text = String(Int(round(results[0][1][0])))
        result22.text = String(Int(round(results[0][1][1])))
        result23.text = String(Int(round(results[0][1][2])))
        result24.text = String(Int(round(results[0][1][3])))
        result25.text = String(Int(round(results[0][1][4])))
        
        result31.text = String(Int(round(results[0][2][0])))
        result32.text = String(Int(round(results[0][2][1])))
        result33.text = String(Int(round(results[0][2][2])))
        result34.text = String(Int(round(results[0][2][3])))
        result35.text = String(Int(round(results[0][2][4])))
        
        result211.text = String(Int(round(results[1][0][0])))
        result212.text = String(Int(round(results[1][0][1])))
        result213.text = String(Int(round(results[1][0][2])))
        result214.text = String(Int(round(results[1][0][3])))
        result215.text = String(Int(round(results[1][0][4])))
        
        result221.text = String(Int(round(results[1][1][0])))
        result222.text = String(Int(round(results[1][1][1])))
        result223.text = String(Int(round(results[1][1][2])))
        result224.text = String(Int(round(results[1][1][3])))
        result225.text = String(Int(round(results[1][1][4])))
        
        result231.text = String(Int(round(results[1][2][0])))
        result232.text = String(Int(round(results[1][2][1])))
        result233.text = String(Int(round(results[1][2][2])))
        result234.text = String(Int(round(results[1][2][3])))
        result235.text = String(Int(round(results[1][2][4])))
        
        results1n.text = String(resultsN[0])
        results2n.text = String(resultsN[1])
        results3n.text = String(resultsN[2])
        
        results1y.text = String(resultsY[0])
        results2y.text = String(resultsY[1])
        results3y.text = String(resultsY[2])
        
        resultc1n.text = String(resultsN[3])
        resultc2n.text = String(resultsN[4])
        resultc3n.text = String(resultsN[5])
        resultc4n.text = String(resultsN[6])
        resultc5n.text = String(resultsN[7])
        
        resultc1y.text = String(resultsY[3])
        resultc2y.text = String(resultsY[4])
        resultc3y.text = String(resultsY[5])
        resultc4y.text = String(resultsY[6])
        resultc5y.text = String(resultsY[7])
        
        print(results)
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

