//
//  ClassQuiz.swift
//  Swift Quiz
//
//  Created by Kevin Longue on 11/01/23.
//

import Foundation


class Quiz {
    
    let question: String
    let options: [String]
    private let correctAnswer: String
    
    init(question: String, options: [String], correctAnswer: String) {
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
    }
    
    func validadeOption(_ index: Int) -> Bool {
        let answer = options[index]
        return answer == correctAnswer
    }
    
    deinit{
        print("Liberou o Qeue da Memoria")
    }
    
