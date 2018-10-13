import UIKit

class SwitchingViewController: UIViewController {
    
    // private instance variables
    private var cloudGoddessViewController: cloudGoddessViewController!
    private var godOfDeathViewController: godOfDeathViewController!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        cloudGoddessViewController = storyboard?.instantiateViewController(withIdentifier: "cloudGoddess") as! cloudGoddessViewController
        
        cloudGoddessViewController.view.frame = view.frame
        switchViewController(from: nil, to: cloudGoddessViewController)
        // helper method
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        if cloudGoddessViewController != nil
        && cloudGoddessViewController.view.superview == nil {
            cloudGoddessViewController = nil
        }
        if godOfDeathViewController != nil
            && godOfDeathViewController.view.superview == nil {
            godOfDeathViewController = nil
        }
    }
    
    @IBAction func switchViews(sender: UIBarButtonItem) {
        if godOfDeathViewController?.veiw.superview == nil {
            if godOfDeathViewController == nil {
                godOfDeathViewController = storyboard?.instantiateInitialViewController(withIdentifier: "godOfDeath") as! godOfDeathViewController
            }
        } else if cloudGoddessViewController?.view.superview == nil {
            if cloudGoddessViewController == nil {
                cloudGoddessViewController = storyboard?.instantiateInitialViewController(withIdentifier: "cloudGoddess") as! cloudGoddessViewController
            }
        }
        
        if cloudGoddessViewController != nil
            && cloudGoddessViewController!.view.superview != nil {
            godOfDeathViewController.view.frame = view.frame
            switchViewController(from: cloudGoddessViewController,
                to: godOfDeathViewController)
        }else {
            cloudGoddessViewController.view.frame = view.frame
            switchViewController(from: godOfDeathViewController,
                                 to: cloudGoddessViewController)
        }
    }



}
