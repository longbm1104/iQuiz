//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Mia Pham on 5/8/24.
//

import UIKit

class QuestionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var ansPicker: UIPickerView!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ansPicker.delegate = self
        self.ansPicker.dataSource = self
        
//        showQuestion()
    }
    
    //Number of data column
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 4
    }
}
