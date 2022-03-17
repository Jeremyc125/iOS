//
//  ViewController.swift
//  SuperHeroQuiz
//
//  Created by user216422 on 3/15/22.
//



import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    let quizBank = [
        ("Who is Batman?", "Bruce Wayne"),
        ("Who is Clark Kent?", "A reporter for the Daily Planet"),
        ("What is another name for Superman?", "The Man of Steel"),
        ("Batman protects which city?", "Gotham"),
        ("How did Spiderman gain his powers?", "Bitten by a radioactive spider"),
        ("Who said 'With Great Power comes Great Responsibility?'", "Ben Parker"),
        ("How do we handle multiline labels?","Lorem ipsum dolor sit, amet consectetur adipisicing elit. Illo suscipit cupiditate aperiam asperiores eveniet quibusdam? Exercitationem voluptates voluptatibus iusto illo, id suscipit consequatur illum nemo sunt? Porro, amet. Illo, quo?")
    ]
    //see if you can figure out multiline labels on your own! Good luck!
    var currentQuestion = 0
    @IBAction func buttonAnswerPressed(_ sender: UIButton) {
        
        if(answerLabel.isHidden != answerLabel.isHidden){
            answerLabel.isHidden = answerLabel.isHidden
        }else{
            answerLabel.isHidden = answerLabel.isHidden
        }
    }
    @IBAction func buttonNextPressed(_ sender: UIButton) {
        
        if(currentQuestion < quizBank.count-1){
            currentQuestion += 1
        }else{
            currentQuestion = 0
        }
        updateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    func updateUI() {
        
        questionLabel.text = quizBank[currentQuestion].0
        answerLabel.text = quizBank[currentQuestion].1
        answerLabel.isHidden == answerLabel.isHidden
    }
}



