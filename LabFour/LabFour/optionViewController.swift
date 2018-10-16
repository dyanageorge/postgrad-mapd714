//
//  optionViewController.swift
//  LabFour
//
//  Created by Dyana George on 10/13/18.
//  Copyright © 2018 Dyana George. All rights reserved.
//

import UIKit

class optionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var buttonColorView: UIImageView!
    
    @IBOutlet weak var backgroundImagePicker: UIPickerView!
    
    var backgroundImage: [UIImage] = [UIImage(named: "cloudGoddess")!, UIImage(named: "blackGirl")!, UIImage(named: "fairy")!, UIImage(named: "godOfDeath")!,UIImage(named: "rudeKids")!, UIImage(named: "swordBearer")!]

    @IBOutlet weak var buttonColorPicker: UIPickerView!
 
    @IBAction func submitButtonPressed(_sender: UIButton) {
        let row = backgroundImagePicker.selectedRow(inComponent: 0)
        let selected = backgroundImage[row]
        
//        let image0 = UIImage(named: "cloudGoddess")
//        let image1 = UIImage(named: "blackGirl")
//        let image2 = UIImage(named: "fairy")
//        let image3 = UIImage(named: "godOfDeath")
//        let image4 = UIImage(named: "rudeKids")
//        let image5 = UIImage(named: "swordBearer")
//
//        if selected != nil {
//            if selected == 0 {
//                backgroundImageView.image = UIImage(named: "cloudGoddess")
//                backgroundImageLabel.label =
//            }
//            else if selected == 1 {
//                backgroundImageView.image = UIImage(named: "blackGirl")
//                backgroundImageLabel.label =
//            }
//            else if selected == 2 {
//                backgroundImageView.image = UIImage(named: "fairy")
//                backgroundImageLabel.label =
//            }
//            else if selected == 3 {
//                backgroundImageView.image = UIImage(named: "cloudGoddess.png")
//                backgroundImageLabel.label =
//            }
//        }
//       let title = "You have selected \(selected)"
//
//        let alert = UIAlertController(
//        title: <#T##String?#>,
//        message: <#T##String?#>,
//        preferredStyle: .alert)
//
//        let action = UIAlertAction(
//        title: <#T##String?#>,
//        style: <#T##UIAlertActionStyle#>,
//        handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)
    }
    
    //makes the class comply with protocol
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return backgroundImage.count
    }
    
    //show names in view
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView) -> UIView {
        
        var rowString = String()
        switch row {
        case 0:
            rowString = "cloudGoddess"
            backgroundImageView.image  = UIImage(named:"cloudGoddess.png")
            
        case 1:
            rowString = "blackGirl"
            backgroundImageView.image  = UIImage(named:"blackGirl.png")
            
        case 2:
            rowString = "cloudGoddess"
            backgroundImageView.image  = UIImage(named:"cloudGoddess.png")
            
        case 3:
            rowString = "cloudGoddess"
            backgroundImageView.image  = UIImage(named:"cloudGoddess.png")
            
        case 4:
            rowString = "cloudGoddess"
            backgroundImageView.image  = UIImage(named:"cloudGoddess.png")
            
        case 5:
            rowString = "cloudGoddess"
            backgroundImageView.image  = UIImage(named:"cloudGoddess.png")
            
        default:
            rowString = "Error: too many rows"
            backgroundImageView.image = nil
        }
        
    }
}


//    var button = dropDownBtn()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        button = dropDownBtn.init(frame: CGRect(x: 0, y: 0, width: 0, height:0))
//        button.setTitle("Background Image", for: .normal)
//        button.translatesAutoresizingMaskIntoConstraints = false
//
//        //Add Button to the View Controller
//        self.view.addSubview(button)
//
//
//        //button Constraints
//        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//        button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
//        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
//        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
//
//        //Set the drop down menu's options
//        button.dropView.dropDownOption = ["CloudGoddess", "GodOfDeath", "Magenta", "White", "Black", "Pink"]
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//protocol dropDownProtocol {
//    func dropDownPressed(string : String)
//}
//
//class dropDownBtn: UIButton, dropDownProtocol {
//    func dropDownPressed(string: String) {
//
//        self.setTitle(string, for: .normal)
//        self.dismissDropDown()
//    }
//
//    var dropView = dropDownView()
//
//    var height = NSLayoutConstraint()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        self.backgroundColor = UIColor.darkGray
//
//        dropView = dropDownView.init(frame: CGRect.init(x: 0, y:0, width: 0,height: 0))
//        dropView.delegate = self
//        dropView.translatesAutoresizingMaskIntoConstraints = false
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    override func didMoveToSuperview() {
//        self.superview?.addSubview(dropView)
//        self.superview?.bringSubview(toFront: dropView)
//
//        dropView.topAnchor.constraint(equalTo: self.buttomAnchor).isActive = true
//        dropView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
//        dropView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
//        height = dropView.heightAnchor.constraint(equalToConstant: 0)
//    }
//
//    var isOpen = false
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if isOpen == false {
//
//            isOpen = true
//
//            NSLayoutConstraint.deactivate([self.height])
//
//            if self.dropView.tableView.contentSize.height > 150 {
//                self.height.constant = 150
//        } else {
//            self.height.constant = self.dropView.tableView.contentSize.height
//        }
//            NSLayoutConstraint.activate([self.height])
//
//            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
//                self.dropView.layoutIfNeeded()
//                self.dropView.center.y += self.dropView.frame.height / 2
//            }, completion: nil)
//
//        } else {
//            isOpen = false
//
//            NSLayoutConstraint.deactivate([self.height])
//            self.height.constant = 0
//            NSLayoutConstraint.activate([self.height])
//            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
//                self.dropView.center.y -= self.dropView.frame.height / 2
//                self.dropView.layoutIfNeeded()
//            }, completion: nil)
//
//        }
//    }
//
//    func dismissDropDown() {
//        isOpen = false
//        NSLayoutConstraint.deactivate([self.height])
//        self.height.constant = 0
//        NSLayoutConstraint.activate([self.height])
//        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
//            self.dropView.center.y -= self.dropView.frame.height / 2
//            self.dropView.layoutIfNeeded()
//        }, completion: nil)
//    }
//
//}
//
//class dropDownView: UIView, UITableViewDelegate, UITableViewDataSource {
//
//    var dropDownOption = [String]()
//
//    var tableView = UITableView()
//
//    var delegate : dropDownProtocol!
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        tableView.backgroundColor = UIColor.darkGray
//        self.backgroundColor = UIColor.darkGray
//
//        tableView.delegate = self
//        tableView.dataSource = self
//
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//
//        self.addSubview(tableView)
//
//        tableView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
//        tableView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
//        tableView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
//    }
//
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell()
//
//        cell.textLabel?.text = dropDownOption(indexPath.row)
//        cell.backgroundColor = UIColor.darkGray
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        self.delegate.dropDownPressed(string: dropDownOption[indexPath.row])
//        self.tableView.deselectRow(at: indexPath, animated: true)
//    }
//}
