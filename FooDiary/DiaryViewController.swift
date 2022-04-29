//
//  DiaryViewController.swift
//  FooDiary
//
//  Created by Jason Fernando on 29/04/22.
//

import UIKit

class DiaryViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Diary().showDiary().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "diaryID") as! DiaryCell
        let diary = Diary().showDiary()[indexPath.row]
        
        cell.mealTimeCell.text = monthDesc(date: diary.foodTime) + " " + yearDesc(date: diary.foodTime) + " - " + timeDesc(date: diary.foodTime)
        return cell
    }
    
    
    
    @IBOutlet weak var diaryTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        diaryTableView.reloadData()
    }
    
    func monthDesc(date: Date)->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "LLLL"
        return dateFormatter.string(from: date)
    }
    
    func yearDesc(date: Date)->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        return dateFormatter.string(from: date)
    }
    
    func timeDesc(date: Date)->String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter.string(from: date)
    }

}
