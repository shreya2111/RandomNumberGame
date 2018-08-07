//
//  SecondViewController.swift
//  GameRandomNumber
//
//  Created by Shreya  on 01/05/18.
//  Copyright © 2018 Shreya . All rights reserved.
//

import UIKit



class SecondViewController: UIViewController, UITextFieldDelegate {
    let a = arc4random_uniform(10)
    var c = 1
    
    @IBOutlet var txtF: UITextField!
    @IBOutlet var lblText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextFieldDidEndEditingReason){
        if(c<5){
            //lblText.text="\(a)"
            if Int(txtF.text!)! == a {
                lblText.text = "You Win! The correct no is \(txtF.text!)!"
                
            }
            else{
                if Int(txtF.text!)! > a{
                    lblText.text = "Enter a smaller number"
                }
                else{
                    lblText.text = "Enter a larger number"
                }
                
            }
            c+=1
        }
        else{
            lblText.text = "Game Over!"
        }
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        //textField.text = "Sample Text"
        return true
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
