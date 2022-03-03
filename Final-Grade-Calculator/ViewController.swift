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
        var c = Float(currentGrade) ?? 90
        
        var desiredGrade = desiredTextField.text ?? ""
        var d = Float(desiredGrade) ?? 90
        
        var finalExam = finalExamTextField.text ?? ""
        var f = Float(finalExam) ?? 90
        
        var weightDecimal = f/100
        
        var difference = 1 - weightDecimal
        
        var valueOfAssignments = difference * c
        
        var difference2 = d - valueOfAssignments
        
        var nearFinal = difference2 / f
        
        var finalGrade = nearFinal * 100
        
        if finalGrade > 100 {
            view.backgroundColor = UIColor.red
        }
        else {
            view.backgroundColor = UIColor.green
        }
        
        resultLabel.text = "You need to score " + "\(finalGrade)" + "% on the Final Exam"
        
        resultLabel.isHidden = false
        
    }
    
    

}

