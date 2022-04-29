//
//  Diary.swift
//  FooDiary
//
//  Created by Jason Fernando on 29/04/22.
//

import Foundation

var diaryList = [Diary]()

class Diary {
    var id:Int!
    var foodName:String!
    var foodTime:Date!
    var foodCalorie:String!
    
    func showDiary() -> [Diary]{
        var allDiary = [Diary]()
        
        for diary in diaryList {
            allDiary.append(diary)
        }
        return allDiary
    }
}

