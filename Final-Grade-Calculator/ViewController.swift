//
//  ViewController.swift
//  Final-Grade-Calculator
//
//  Created by Victoria Mahoney on 3/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentGradeLabel: UILabel!
    
    @IBOutlet weak var desiredGradeLabel: UILabel!
    
    @IBOutlet weak var finalExamWeightLabel: UILabel!
    
    @IBOutlet weak var currentTextField: UITextField!
    
    @IBOutlet weak var desiredTextField: UITextField!
    
    @IBOutlet weak var finalExamTextField: UITextField!
    
    @IBOutlet weak var calculateButtonOutlet: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.isHidden = true
    }

   
    @IBAction func calculateButtonAction(_ sender: Any) {
        
        var currentGrade = currentTextField.text ?? ""
        var c = Int(currentGrade) ?? 90
        
        var desiredGrade = desiredTextField.text ?? ""
        var d = Int(desiredGrade) ?? 90
        
        var finalExam = finalExamTextField.text ?? ""
        var f = Int(finalExam) ?? 90
        
        var finalGrade = d - (100 - f) * c / f
        
        resultLabel.text = "You need to score " + "\(finalGrade)" + "% on the Final Exam"
        
        resultLabel.isHidden = false
    }
    
    

}

