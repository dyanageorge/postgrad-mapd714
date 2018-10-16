//
//  ViewController.swift
//  LabThree
//
//  Created by Dyana George on 10/14/18.
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

class switchingViewController: UIViewController {
    //private instance variables
    private var scientificViewController: scientificViewController!
    private var basicViewController: basicViewController!
    
    private func switchViewController(from fromVC:UIViewController?, to toVC:UIViewController?){
        if fromVC != nil {
            fromVC!.willMove(toParentViewController: nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParentViewController()
        }
        
        if toVC != nil {
            self.addChildViewController(toVC!)
            self.view.insertSubview(toVC!.view, at: 0)
            toVC!.didMove(toParentViewController: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        basicViewController = storyboard?.instantiateViewController(withIdentifier: "basic")
            as! basicViewController
        
        basicViewController.view.frame = view.frame
        switchViewController(from: nil, to:basicViewController)
    }
    
    @IBAction func switchViews(sender: UIBarButtonItem) {
        //create the new controller
        if scientificViewController?.view.superview == nil {
            if scientificViewController == nil {
                scientificViewController = storyboard?.instantiateViewController(withIdentifier: "scientific") as! scientificViewController
            }
        } else if basicViewController?.view.superview == nil {
            if basicViewController == nil {
                basicViewController = storyboard?.instantiateViewController(withIdentifier: "basic") as! basicViewController
            }
        }
        
        //switch view controller
        if basicViewController != nil && basicViewController.view.superview != nil{
            scientificViewController.view.frame = view.frame
            switchViewController(from: basicViewController, to: scientificViewController)
        } else {
            basicViewController.view.frame = view.frame
            switchViewController(from: scientificViewController, to:basicViewController)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

