//
//  ViewController.swift
//  iQuiz
//
//  Created by Mia Pham on 4/29/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var settings: UIToolbar!
    
    struct Categories {
        let title : String
        let imgName : String
    }
    
    let data: [Categories] = [
        Categories(title: "Mathematics", imgName: "math_logo"),
        Categories(title: "Marvel Super Heroes", imgName: "marvel_logo"),
        Categories(title: "Science", imgName: "science_logo"),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let categories = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text = categories.title
        cell.imgView.image = UIImage(named: categories.imgName)
        return cell
    }
    
    @IBAction func settingsTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Settings", message: "Settings go here", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

