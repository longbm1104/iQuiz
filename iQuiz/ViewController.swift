//
//  ViewController.swift
//  iQuiz
//
//  Created by Mia Pham on 4/29/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var settings: UIToolbar!
    
    struct Categories {
        let title : String
        let imgName : String
        let description : String
    }
    
    let data: [Categories] = [
        Categories(title: "Mathematics", imgName: "math_logo", description: "Test your mathematical skills with our engaging trivia quiz, packed with fun and challenging questions."),
        Categories(title: "Marvel Super Heroes", imgName: "marvel_logo", description: "Test your Marvel skills with our engaging trivia quiz, packed with fun and challenging questions."),
        Categories(title: "Science", imgName: "science_logo", description: "Test your science skills with our engaging trivia quiz, packed with fun and challenging questions."),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let categories = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = categories.title
        cell.label_desc.text = categories.description
        cell.imgView.image = UIImage(named: categories.imgName)
        return cell
    }
    
    //Settings alert
    @IBAction func settingsTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    //Space the cells evenly throughout the screen
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         let totalHeight = tableView.bounds.size.height
         let cellHeight = totalHeight / CGFloat(data.count)
         return cellHeight
     }
}

