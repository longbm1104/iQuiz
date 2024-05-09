//
//  Categories.swift
//  iQuiz
//
//  Created by Mia Pham on 5/6/24.
//

import UIKit

//class Categories: NSObject {
//    
//    var cellTitle : String
//    var cellDescription : String
//    var cellImgName : String
//    
//    override init() {
//        cellTitle = ""
//        cellDescription = ""
//        cellImgName = ""
//    }
//    
//    init(title: String, imgName: String, description: String){
//        cellTitle = title
//        cellDescription = description
//        cellImgName = imgName
//    }
//}

struct Categories: Decodable {
    let title: String
    let desc: String
//    let imgName: String
    let questions: [Question]
}

struct Question: Decodable {
    let text: String
    let answer: String
    let answers: [String]
}
