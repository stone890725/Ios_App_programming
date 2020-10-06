//
//  ViewController.swift
//  Second_Exam
//
//  Created by stone on 2020/10/6.
//  Copyright © 2020 stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var list:[Any]=[]

            list.append(["A1":"做得好","B1":"做得不錯","C1":"有點糟糕","F1":"你這爛東西"])
        list.append(["A1":"太棒了","B1":"加油，已經不錯了","C1":"你要再努力一點","F1":"沒讀書考這麼爛"])
        list.append(["A1":"繼續保持","B1":"離最高分剩一點點了，加油","C1":"加油，你可以的","F1":"你好廢"])
        //judgeement
        var score = [String:Int]();

        for i in (0...49){
            let key = "stundent"+String(i+1)
            score[key]=Int.random(in: 0...100)
        }
    
        
        for (key,studentSoc) in score{
            
            let commentKey = Int.random(in: 0...2)
            //get comment key
            let sco = studentSoc as! Int;
            //get students score
            let rankA = (list[commentKey] as! [String:String] ) ["A1"]
            let rankB = (list[commentKey] as! [String:String] ) ["B1"]
            let rankC = (list[commentKey] as! [String:String] ) ["C1"]
            let rankF = (list[commentKey] as! [String:String] ) ["F1"]
            //get comment
            if(sco>=90){
               print("rank=A,score=\(sco),comment=\(rankA)")
            }
            else if(sco>=80){
               print("rank=B,score=\(sco),comment=\(rankB)")
            }
            else if(sco>=70){
                print("rank=C,score=\(sco),comment=\(rankC)")
            }
            else{
                print("rank=F,score=\(sco),comment=\(rankF)")
            }
            
        }
//
        
        
        
        
        
    }


}

