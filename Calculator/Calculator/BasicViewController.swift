//
//  BasicViewController.swift
//  Calculator
//
//  Created by Dyana George on 9/28/18b
//  Copyright © 2018 Dyana George. All rights reserved.
//

import UIKit

class BasicViewController: UIViewController {
    
    var numOnScreen:Double = 0;
    var prevnum:Double = 0;
    var arith = false;
    var operate = 0;
    var btnCount:Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
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
    
    //clear button
    @IBAction func clearPressed(_ sender: UIButton) {
        displayLabel.text = ""
        prevnum = 0;
        numOnScreen = 0;
        operate = 0;
        btnCount = 0;
    }
    
    //plus or minus
    @IBAction func plusOrMinusPressed(_ sender: UIButton) {
        
        //func clickCount() {
            //count how many times the button has been pressed
            //while btnCount > 1 {
                //let btnCount = self.btnCount +1;
                //displayLabel.text = String(numOnScreen * -1)
            //}
            
            displayLabel.text = String(numOnScreen * -1)
       // }
        
    }
    
    //percent
    @IBAction func percentPressed(_ sender: UIButton) {
    }
    
    //divide
    @IBAction func dividePressed(_ sender: UIButton) {
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
        // IF add is true
        displayLabel.text = "+";
        displayLabel.text = String(prevnum + numOnScreen)
        //then
    }
    
    //equal
    @IBAction func equalPressed(_ sender: UIButton) {
        //if add is false
        
        
    }
    
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//
//        //to change from lanscape to port
//       func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
//            // print(UIDevice.current.orientation.isLandscape)
//
//            collectionView.collectionViewLayout.invaildateLayout()
//
//            let indexPath = IndexPath(item: pageControl.currentPage, section: 0)
//            //scroll to indexpath aftr rotation
//            DispatchQueue.main.async {
//                self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
//            }
//            
//
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
