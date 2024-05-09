//
//  FetchJSON.swift
//  iQuiz
//
//  Created by Mia Pham on 5/8/24.
//

import UIKit

//class FetchJSON: NSObject {
//    func fetch() {
//        let url = URL(string: "http://tednewardsandbox.site44.com/questions.json")!
//        
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            if let error = error {
//                NSLog("Error! \(error)")
//                return
//            }
//            
//            guard let httpResponse = response as? HTTPURLResponse,
//                  (200...299).contains(httpResponse.statusCode) else {
//                NSLog("Error! \(String(describing: response))")
//                return
//            }
//            
//            
//            do {
//                let categories = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [AnyObject]
//                for category in categories {
//                    let title = category["title"] as! String
//                    let description = category["desc"]
//                    var questions = [Question]()
//                    let questionsData = category["questions"] as! [[String: AnyObject]]
//                    for questionsData in category.questions {
//                        let text = questionsData["text"]
//                        let correctAns = Int(questionsData["answer"] as! String)
//                        let answers = questionsData["answers"]
//                        let question = Question(text as! String, answers as! [String], correctAns!)
//                    }
//                }
//            }
//        }
//    }
//}
