
import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "5 + 8 = 13", a: "True"),
        Question(q: "2 - 9 = 10", a: "false"),
        Question(q: "5 * 4 = 220", a: "false")
    ]

    var questionNumber = 0
    var score = 0


    mutating func checkAnswer(_ answer: String) -> Bool {
        if answer ==  quiz[questionNumber].answer {
            score += 1
            return true
        } else {
            return false
        }

    }

    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }

    func getProgress() -> Float{
        return Float(questionNumber + 1) / Float(quiz.count)
    }

    mutating func nextQuestion() {
        if  questionNumber + 1 < quiz.count {
            self.questionNumber += 1
        }else {
            self.questionNumber = 0
            score = 0
        }
    }

    func getScore() -> Int{
        return score
    }
}
