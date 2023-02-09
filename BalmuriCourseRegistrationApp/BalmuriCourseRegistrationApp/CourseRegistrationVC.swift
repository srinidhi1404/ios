//
//  CourseRegistrationVC.swift
//  BalmuriCourseRegistrationApp
//
//  Created by Balmuri,Srinidhi on 2/6/23.
//

import UIKit

class CourseRegistrationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        messageLBL.numberOfLines = 0
        messageLBL.text = ""
        var i = 0
        
        while(i<3){
            courseSWCH[i].isOn = false
            i += 1
        }

    }
    

    
    @IBOutlet weak var messageLBL: UILabel!
    
    
    
    @IBOutlet weak var firstNameTF: UITextField!
    
    
    @IBOutlet weak var lastNameTF: UITextField!
    
    
    @IBOutlet var courseSWCH: [UISwitch]!
    
    
    
    @IBAction func toggleCourse(_ sender: UISwitch) {
        
        
    }
    
    
    
    @IBAction func onSubmit(_ sender: UIButton) {
        
        var count = 0
        var str = ""
        if(courseSWCH[0].isOn){
            count += 1
            str = str + "iOS"
        }
        if(courseSWCH[1].isOn){
            count += 1
            str = str + " Patterns"
        }
        if(courseSWCH[2].isOn){
            count += 1
            str = str + " Big Data"
        }
        if(firstNameTF.text == "" || lastNameTF.text == ""){
            messageLBL.text = "Please enter your full name."
       }else if(courseSWCH[0].isOn == false && courseSWCH[1].isOn == false && courseSWCH[2].isOn == false) {
            messageLBL.text = "Hi \(firstNameTF.text!) ,\(lastNameTF.text!) please select the courses of your choice"
        }else{
            messageLBL.text = "CONFIRMATION\n \(firstNameTF.text!), \(lastNameTF.text!) has successfully enrolled in \(count) course(s), namely, \(str)."
        }
        
        
        
        
    
    }
    
    
    @IBAction func onReset(_ sender: UIButton) {
        
        messageLBL.text! = ""
        firstNameTF.text! = ""
        lastNameTF.text! = ""
        var i = 0
        
        while(i<3){
            courseSWCH[i].isOn = false
            i += 1
        }
        
    }
    
    
    
    

}
