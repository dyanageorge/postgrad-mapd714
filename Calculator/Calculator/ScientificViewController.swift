//
//  ScientificViewController.swift
//  Calculator
//
//  Created by Dyana George on 9/28/18.
//  Copyright © 2018 Dyana George. All rights reserved.
//

import UIKit

//to have the boader around the button
@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else { return nil }
            return UIColor(cgColor: color)
        }
    }
}

class ScientificViewController: UIViewController {
//declear var
    var numOnScreen:Double = 0;
    var prevnum:Double = 0;
    var arith = false;
    var operate = 0;
    var btnCount:Int = 0;
    var memoryNum:Double = 0;
    
    // label
    @IBOutlet weak var displayLabel: UILabel!
    
    //for numbers
    @IBAction func numPressed(_ sender: UIButton) {
        if arith == true
        {
            displayLabel.text = displayLabel.text!  + String(sender.tag-1)
            numOnScreen = Double(displayLabel.text!)!
            arith = false
        }
        else{
            displayLabel.text = displayLabel.text! + String(sender.tag-1)
            numOnScreen = Double(displayLabel.text!)!
        }
    }
    
    //clear
    @IBAction func clearPressed(_ sender: UIButton) {
        displayLabel.text = ""
        prevnum = 0;
        numOnScreen = 0;
        operate = 0;
        btnCount = 0;
    }
    
    //plusorminus
    
    //percent
    
    //divide
    @IBAction func dividePress(_ sender: UIButton) {
        //print the divide button on screen
        displayLabel.text = "/";
        //calculate
        displayLabel.text = String(prevnum / numOnScreen)
    }
    
    //multiple
    @IBAction func multiplePressed(_ sender: UIButton) {
        displayLabel.text = "x";
        displayLabel.text = String(prevnum * numOnScreen)
    }
    
    //minus
    @IBAction func minusPressed(_ sender: UIButton) {
        displayLabel.text = "-";
        displayLabel.text = String(prevnum - numOnScreen)
    }
    
    //add
    @IBAction func addPressed(_ sender: UIButton) {
        displayLabel.text = "+";
        displayLabel.text = String(prevnum + numOnScreen)
    }
    
    //left bracket
    @IBAction func leftBracketPressed(_ sender: UIButton) {
        
    }
    
    //right bracket
    @IBAction func rightBracketPressed(_ sender: UIButton) {
    }
    
    //memory clear
    @IBAction func memoryClearPressed(_ sender: UIButton) {
        memoryNum = 0;
    }
    
    //memory store
    
    
    //memory add
    @IBAction func memoryAddPressed(_ sender: UIButton) {
        displayLabel.text = String(memoryNum + numOnScreen)
    }
    
    //memory minus
    @IBAction func memoryMinusPressed(_ sender: UIButton) {
        displayLabel.text = String(memoryNum - numOnScreen)
    }
    
    //memory recall
    @IBAction func memoryRecallPressed(_ sender: UIButton) {
        displayLabel.text = String(memoryNum)
    }
    
    //x square
    @IBAction func xSquaredPressed(_ sender: UIButton) {
        displayLabel.text = String(sqrt (numOnScreen)
        )
    }
    
    //x cube
    @IBAction func cubeRootPressed(_ sender: UIButton) {
        displayLabel.text = String(cbrt (numOnScreen))
    }
    
    
    //xy
    
    //ex
    
    //sin
    @IBAction func sinPressed(_ sender: UIButton) {
        displayLabel.text = String(sin(numOnScreen))
    }
    
    //cos
    @IBAction func cosPressed(_ sender: UIButton) {
        displayLabel.text = String(cos(numOnScreen))
        
    }
    
    //tan
    @IBAction func tanPressed(_ sender: UIButton) {
        displayLabel.text = String(tan(numOnScreen))
    }
    
    //e
    @IBAction func ePressed(_ sender: UIButton) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
