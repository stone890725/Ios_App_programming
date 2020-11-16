//
//  ViewController.swift
//  1023Class
//
//  Created by stone on 2020/10/23.
//  Copyright © 2020 stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//       var cities = [String]()
//        cities.append("Taichung")
//        cities.append("Taipei")
//        cities.append("Kaohsiung")
//        //print(cities)
//        cities[2] = "New Taipei"
//        //print(cities)
//
//
//        var zoo: Set = ["Horse", "Lion", "giraffe"]
//        if zoo.contains("Lion") {
//            print("The zoo has Lion")
//        }
//        zoo.insert("monkey")
//
//        if zoo.insert("zebra").inserted{
//            print("success")
//        }else{
//            print("failed")
//        }
        
        let url2 = "http://127.0.0.1/~stone/test.php"
        let url = NSURL(string: url2)
        var arr1=[[Int]]()
        var arr2=[[Int]]()
    
        var zoo: Set = ["Horse", "Lion", "giraffe"]
        var zoo2 :Set = ["Horse", "Lion","Cat"]
        
        if let data = try? Data(contentsOf: url! as URL){
            do {
                let parseDate = try JSONSerialization.jsonObject(with: data as Data, options:
                    .allowFragments)
                let dict = parseDate as! NSDictionary
                //get data and change type
                let user = dict["user"] ?? 0
                //test
//                var set1 = dict["array1f"] ?? 0
//                set1 = Set(set1 as! [String])
//                var set2 = dict["array1f"] ?? 0
//                set2 = Set(set2 as! [String])
                //set
                var op = dict["op"] ?? 0
                op = op as! [String]
                //operation
                var tmp = dict["array1f"] ?? 0
                arr1.append(tmp as! [Int])
                tmp = dict["array1s"] ?? 0
                arr1.append(tmp as! [Int])
                //arr1
                tmp = dict["array2f"] ?? 0
                arr2.append(tmp as! [Int])
                tmp = dict["array2s"] ?? 0
                arr2.append(tmp as! [Int])
                //arr2
                
                for operate in op as! [String] {
                    if(operate == "+"){
                        for i in 0...arr1.count-1{
                            for j in 0...arr1[0].count-1{
                                arr1[i][j]=arr1[i][j]+arr2[i][j]
                            }
                        }
                        print(arr1)
                    }
                    else if(operate == "-"){
                        for i in 0...arr1.count-1{
                            for j in 0...arr1[0].count-1{
                                arr1[i][j]=arr1[i][j]+arr2[i][j]
                            }
                        }
                        print(arr1)
                    }
                    else if(operate == "union"){
                        print("uni",zoo.union(zoo2))
                    }
                    else{
                        print("sub",zoo.subtracting(zoo2))
                    }
                    
                }
                
                
                
            } catch  {
                print(error.localizedDescription)
            }
        }
    }
}



