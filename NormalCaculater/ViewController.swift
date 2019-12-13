//
//  ViewController.swift
//  NormalCaculater
//
//  Created by s2018 on 2019/11/1.
//  Copyright © 2019 s2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count:Double = 0
    var tag:Bool = true
    var tag2:Bool = true
    var j:Bool = true
    var op:String = "="
    var N1:Double = 0
    var sum:Double = 0
    
    @IBOutlet weak var ac: UIButton!
    @IBOutlet weak var op1: UIButton!
    @IBOutlet weak var op2: UIButton!
    @IBOutlet weak var op3: UIButton!
    @IBOutlet weak var op4: UIButton!
    @IBOutlet weak var op5: UIButton!
    
    func PrintSum(S:Double){
        var s:Double = 0
        s = S - Double(Int(S))
        if(s == 0){
            Text.text = String(Int(S))
        }
        else{
            Text.text = String(S)
        }
    }
    
    @IBOutlet weak var Text: UITextView!
    @IBAction func Num7(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 7
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 7 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num8(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 8
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 8 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num9(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 9
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 9 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num6(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 6
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 6 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num5(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 5
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 5 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num4(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 4
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 4 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num3(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 3
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 3 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num2(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 2
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 2 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num1(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            N1 = N1 * 10 + 1
            Text.text = String(Int(N1))
        }
        else{
            count -= 1
            N1 = N1 + 1 * pow(10,count)
            Text.text = String(N1)
        }
    }
    @IBAction func Num0(_ sender: Any) {
        j = false
        ac.setTitle("C", for: .normal)
        if(tag){
            if(N1 != 0){
                N1 = N1 * 10
            }
            else{
                N1 = 0
            }
            Text.text = String(Int(N1))
        }
        else{
            if(count == 0){
                Text.text = String(N1)
            }
            else{
                Text.text += "0"
            }
            count -= 1;
        }
        
    }
    @IBAction func dot(_ sender: Any) {
        ac.setTitle("C", for: .normal)
        if(tag){
            Text.text += "."
        }
        tag = false
    }
    @IBAction func opAC(_ sender: Any) {
        op1.setTitleColor(.white, for: .normal)
        op1.backgroundColor = .systemOrange
        op2.setTitleColor(.white, for: .normal)
        op2.backgroundColor = .systemOrange
        op3.setTitleColor(.white, for: .normal)
        op3.backgroundColor = .systemOrange
        op4.setTitleColor(.white, for: .normal)
        op4.backgroundColor = .systemOrange
        if(ac.title(for: .normal) == "C"){
            ac.setTitle("AC", for: .normal)
            N1 = 0;
            Text.text = String(Int(N1))
        }
        else{
            N1 = 0
            count = 0
            tag = true
            j = true
            sum = 0
            op = "="
            Text.text = "0"
        }
    }
    @IBAction func op_1(_ sender: Any) {
        N1 = -N1
        PrintSum(S: N1)
    }
    @IBAction func op_2(_ sender: Any) {
        N1 = N1 * 0.01
        Text.text = String(N1)
    }
    @IBAction func op1(_ sender: Any) { // +
        op4.setTitleColor(.systemOrange, for: .normal)
        op4.backgroundColor = .white
        op1.setTitleColor(.white, for: .normal)
        op1.backgroundColor = .systemOrange
        op2.setTitleColor(.white, for: .normal)
        op2.backgroundColor = .systemOrange
        op3.setTitleColor(.white, for: .normal)
        op3.backgroundColor = .systemOrange
        if(!j){
        switch(op){
        case "+":
            sum += N1
        case "-":
            sum -= N1
        case "*":
            sum *= N1
        case "'\'":
            if(sum == 0){
                sum = 0;
                Text.text = "e"
            }
            else{
                sum = sum / N1
            }
        default:
            sum = N1
        }
            j = true
            PrintSum(S: sum)
        }
        N1 = 0
        count = 0
        tag = true
        op = "+"
    }
    @IBAction func op2(_ sender: Any) { // -
        op3.setTitleColor(.systemOrange, for: .normal)
        op3.backgroundColor = .white
        op1.setTitleColor(.white, for: .normal)
        op1.backgroundColor = .systemOrange
        op2.setTitleColor(.white, for: .normal)
        op2.backgroundColor = .systemOrange
        op4.setTitleColor(.white, for: .normal)
        op4.backgroundColor = .systemOrange
        if(!j){
        switch(op){
        case "+":
            sum += N1
        case "-":
            sum -= N1
        case "*":
            sum *= N1
        case "'\'":
            if(sum == 0){
                Text.text = "e"
            }
            else{
                sum = sum / N1
            }
        default:
            sum = N1
        }
            j = true
            PrintSum(S: sum)
        }
        N1 = 0
        count = 0
        tag = true
        op = "-"
    }
    @IBAction func op3(_ sender: Any) { // *
        op2.setTitleColor(.systemOrange, for: .normal)
        op2.backgroundColor = .white
        op1.setTitleColor(.white, for: .normal)
        op1.backgroundColor = .systemOrange
        op3.setTitleColor(.white, for: .normal)
        op3.backgroundColor = .systemOrange
        op4.setTitleColor(.white, for: .normal)
        op4.backgroundColor = .systemOrange
        if(!j){
        switch(op){
        case "+":
            sum += N1
        case "-":
            sum -= N1
        case "*":
            sum *= N1
        case "'\'":
            if(sum == 0){
                Text.text = "e"
            }
            else{
                sum = sum / N1
            }
        default:
            sum = N1
        }
            j = true
            PrintSum(S: sum)
        }
        N1 = 0
        count = 0
        tag = true
        op = "*"
    }
    @IBAction func op4(_ sender: Any) { // /
        op1.setTitleColor(.systemOrange, for: .normal)
        op1.backgroundColor = .white
        op2.setTitleColor(.white, for: .normal)
        op2.backgroundColor = .systemOrange
        op3.setTitleColor(.white, for: .normal)
        op3.backgroundColor = .systemOrange
        op4.setTitleColor(.white, for: .normal)
        op4.backgroundColor = .systemOrange
        if(!j){
        switch(op){
        case "+":
            sum += N1
        case "-":
            sum -= N1
        case "*":
            sum *= N1
        case "'\'":
            if(sum == 0){
                Text.text = "e"
            }
            else{
                sum = sum / N1
            }
        default:
            sum = N1
        }
            j = true
            PrintSum(S: sum)
        }
        N1 = 0
        count = 0
        tag = true
        op = "'\'"
    }
    @IBAction func op5(_ sender: Any) { // =
        op1.setTitleColor(.white, for: .normal)
        op1.backgroundColor = .systemOrange
        op2.setTitleColor(.white, for: .normal)
        op2.backgroundColor = .systemOrange
        op3.setTitleColor(.white, for: .normal)
        op3.backgroundColor = .systemOrange
        op4.setTitleColor(.white, for: .normal)
        op4.backgroundColor = .systemOrange
        switch(op){
        case "+":
            sum += N1
        case "-":
            sum -= N1
        case "*":
            sum *= N1
        case "'\'":
            if(sum == 0){
                Text.text = "e"
            }
            else{
                sum = sum / N1
            }
        default:
            sum = N1
        }
        j = true
        N1 = sum
        count = 0
        tag = true
        op = "="
        PrintSum(S: sum)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

