//
//  ViewController.swift
//  CalculaterTest
//
//  Created by stone on 2020/10/22.
//  Copyright © 2020 stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        /*
        class TestClass{
            var n = 0
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        func inc(_ value1:Int,_ value2:Int)->Int{
            return value1+value2
        }
        
        func dec(_ value1:Int,_ value2:Int)->Int{
            return value1-value2
        }
        
        func div(_ value1:Int,_ value2:Int)->Int{
            return value1/value2
        }
        
        func mul(_ value1:Int,_ value2:Int)->Int{
            return value1*value2
        }
        
        func pow(_ obj:TestClass){
            obj.n = obj.n * obj.n
        }
        
        func abs1(_ value:inout Int){
            if value<0 {
                value=value*(-1)
            }
        }
        
        var a :Int=10
        var b :Int=5
        var c=TestClass()
        var d:Int=(-3)
        c.n=20
        print("c.n=",c.n)
        pow(c)
        print(c.n)
        
        print("a+b=",inc(a,b))
        print("a-b=",dec(a, b))
        print("a*b=",mul(a, b))
        print("a/b=",div(a, b))
        
        print("d=",d)
        abs1(&d)
        print("d=",d)
        */
        
        
        
        
        
        func arrinc(_ value:[Float])->Float{
            var reVal:Float = 0
            for i in value{
                reVal = reVal + i
            }
            return reVal
        }
        
        func arrdec(_ value:[Float])->Float{
            var reVal:Float = 0
            for i in value{
                reVal = reVal - i
            }
            return reVal
        }
        
        func arrmul(_ value:[Float])->Float{
            var reVal:Float = 1
            for i in value{
                reVal = reVal * i
            }
            return reVal
        }
        
        func arrClose(_ value:[Float],op:([Float])->Float)->Float{
            return op(value)
        }
        
        var arr:[Float]=[]
        for i in 0...10{
            arr.append(Float.random(in:-3.5...5.7))
        }
        print("arr=",arr)
        print("arrClose=",arrClose(arr, op: arrinc))
        print("arrClose=",arrClose(arr, op: arrdec))
        print("arrClose=",arrClose(arr, op: arrmul))
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

