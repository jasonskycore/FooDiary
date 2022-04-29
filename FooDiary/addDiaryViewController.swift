//
//  addDiaryViewController.swift
//  FooDiary
//
//  Created by Jason Fernando on 29/04/22.
//

import UIKit

class addDiaryViewController: UIViewController {
    
    
//    @IBOutlet weak var foodNameText: UITextField!
//    @IBOutlet weak var mealTimeText: UIDatePicker!
//    @IBOutlet weak var caloriesText: UITextField!
    
    
    
    @IBOutlet weak var foodNameText: UITextField!
    @IBOutlet weak var caloriesText: UITextField!
    @IBOutlet weak var mealTimeText: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveDiaryButton(_ sender: Any) {
        let newDiary = Diary()
        
        newDiary.id = diaryList.count
        newDiary.foodName = foodNameText.text
        newDiary.foodCalorie = caloriesText.text
        newDiary.foodTime = mealTimeText.date
        diaryList.append(newDiary)
        
        navigationController?.popViewController(animated: true)
    }
}
