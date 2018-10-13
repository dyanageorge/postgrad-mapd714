//  Created by Dyana George on 10/04/18.
//  Copyright © 2018 Dyana George. All rights reserved.
//

import UIKit

class switchingViewController: UIViewController {
//private instance variables
    private var optionViewController: optionViewController!
    private var calculatorViewController: calculatorViewController!
    
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
        
        calculatorViewController = storyboard?.instantiateViewController(withIdentifier: "calculator")
            as! calculatorViewController
        
        calculatorViewController.view.frame = view.frame
        switchViewController(from: nil, to:calculatorViewController)
    }
    
    @IBAction func switchViews(sender: UIBarButtonItem) {
        //create the new controller
        if optionViewController?.view.superview == nil {
            if optionViewController == nil {
                optionViewController = storyboard?.instantiateViewController(withIdentifier: "option") as! optionViewController
            }
        } else if calculatorViewController?.view.superview == nil {
            if calculatorViewController == nil {
                calculatorViewController = storyboard?.instantiateViewController(withIdentifier: "calculator") as! calculatorViewController
            }
        }
        
        //switch view controller
        if calculatorViewController != nil && calculatorViewController.view.superview != nil{
            optionViewController.view.frame = view.frame
             switchViewController(from: calculatorViewController, to: optionViewController)
        } else {
            calculatorViewController.view.frame = view.frame
            switchViewController(from: optionViewController, to:calculatorViewController)
        }
       
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
