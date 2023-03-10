//
//  Quiz.swift
//  Swift Quiz
//
//  Created by Kevin Longue on 11/01/23.
//

import UIKit

class CQuiz: UIViewController {


    
    @IBOutlet weak var viTimer: UIView!
    
    @IBOutlet weak var lbQuestion: UILabel!
    
     @IBOutlet var btAnswers: [UIButton]!
    
    let quizManager = QuizManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        viTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear,  animations: {
            self.viTimer.frame.size.width = 0
        }) { (success) in
            self.showResults()
        }
            
            getNewQuiz()
            
    }
    
    
        func getNewQuiz() {
            quizManager.refreshQuiz()
            lbQuestion.text = quizManager.question
            for i in 0..<quizManager.options.count{
                let option = quizManager.options[i]
                let button = btAnswers[i]
                button.setTitle(option, for: .normal)
            }
        }
    
        func showResults(){
            
        }
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
