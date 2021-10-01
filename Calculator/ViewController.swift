//
//  ViewController.swift
//  Calculator
//
//  Created by Smishra2 on 30/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var formulaLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var DivideButton: UIButton!
    @IBOutlet weak var mulButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    
    var value1 = 0.0, value2 = 0.0
    var char : String = ""
    var result : Double = 0
    var flag : Bool = false
    var valueOfMainLabel: String = "0"
    var temp = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "0"
        ACButton.layer.cornerRadius =   ACButton.bounds.size.width/2
        plusButton.backgroundColor = .systemYellow
        subtractButton.backgroundColor = .systemYellow
        mulButton.backgroundColor = .systemYellow
        DivideButton.backgroundColor = .systemYellow
        equalButton.backgroundColor = .systemYellow
        nineButton.layer.cornerRadius =   30
        
    }
    
    @IBAction func zeroAction(_ sender: Any) {
        addValueToMainLabel("0")
    }
    @IBAction func oneAction(_ sender: Any) {
        
        addValueToMainLabel("1")
    }
    @IBAction func twoAction(_ sender: Any) {
        addValueToMainLabel("2")
    }
    @IBAction func threeAction(_ sender: Any) {
        addValueToMainLabel("3")
    }
    @IBAction func fourAction(_ sender: Any) {
        addValueToMainLabel("4")
    }
    @IBAction func fiveAction(_ sender: Any) {
        addValueToMainLabel("5")
    }
    @IBAction func sixAction(_ sender: Any) {
        addValueToMainLabel("6")
    }
    @IBAction func sevenAction(_ sender: Any) {
        addValueToMainLabel("7")
    }
    @IBAction func eightAction(_ sender: Any) {
        addValueToMainLabel("8")
    }
    @IBAction func nineAction(_ sender: Any) {
        addValueToMainLabel("9")
    }
    @IBAction func dotAction(_ sender: Any) {
        addValueToMainLabel(".")
    }
    @IBAction func equalAction(_ sender: Any) {
        
        colorReset()
        
        if flag == false {
            value1 = result
            value2 = temp
        } else {
        value2 = Double (label.text!) ?? 0.0
        temp = value2
        }
        switch char {
            case "+" :
                result = value1 + value2
            case "-" :
                result = value1 - value2
            case "/" :
                result = value1 / value2
            case "*" :
                result = value1 * value2
            default:
                print ("hi")
        }
        let values = String(result).split(separator: ".")
        let intresult = Int(values[1])
        if let int = intresult  {
            if (int > 0) {
                label.text = String(result)
            }
            else {
                label.text = String(Int(result))
            }
        }
        flag = false
        valueOfMainLabel = label.text!
    }
    @IBAction func plusAction(_ sender: Any) {
        colorReset()
        plusButton.backgroundColor = .white
        value1 = Double(label.text!)!
        flag = true
        char = "+"
        valueOfMainLabel = label.text!
    }
    @IBAction func subtractAction(_ sender: Any) {
        colorReset()
        subtractButton.backgroundColor = .white
        value1 = Double(label.text ?? "0.0") ?? 0.0
        flag = true
        char = "-"
        valueOfMainLabel = label.text!
    }
    @IBAction func mulAction(_ sender: Any) {
        colorReset()
        mulButton.backgroundColor = .white
        value1 = Double(label.text ?? "0.0") ?? 0.0
        flag = true
        char = "*"
        valueOfMainLabel = label.text!
    }
    @IBAction func divideAction(_ sender: Any) {
        colorReset()
        DivideButton.backgroundColor = .white
        value1 = Double(label.text ?? "0.0") ?? 0.0
        flag = true
        char = "/"
        valueOfMainLabel = label.text!
        
    }
    @IBAction func clearAction(_ sender: Any) {
        value1 = 0
        value2 = 0
        label.text = "0"
        colorReset()
        flag = false
        valueOfMainLabel = "0"
    }
    
    func colorReset() {
        plusButton.backgroundColor = .systemYellow
        subtractButton.backgroundColor = .systemYellow
        mulButton.backgroundColor = .systemYellow
        DivideButton.backgroundColor = .systemYellow
            
        
    }
    
    func addValueToMainLabel(_ num : String) {
        if( flag == true) {
            value1 = Double(valueOfMainLabel)!
        }
        if( valueOfMainLabel == label.text){
            if(num == "."){
                label.text! += "."
            }else {
            label.text = num
            }
        }
        else {
            label.text! += num
        }
    }

}

