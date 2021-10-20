//
//  ViewController.swift
//  AlertApp
//
//  Created by Ceren Çapar on 20.09.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signUpButton(_ sender: Any) {
        if nameText.text == "" {
            makeEasy(titleInput: "ERROR" , mesageInput: "Cannot Name Empty")
        }
        else if passwordText.text == "" {
            makeEasy(titleInput: "ERROR", mesageInput: "Cannot Password Empty")
        }
        else if emailText.text != passwordText.text {
        makeEasy(titleInput: "ERROR", mesageInput: "Passwords not matched")
        } else{
            makeEasy(titleInput: "SUCCES", mesageInput: "Login oldun")
        }
    }
    func makeEasy(titleInput : String, mesageInput : String){
    let alert = UIAlertController(title: titleInput, message: mesageInput, preferredStyle: UIAlertController.Style.alert)
    let okeyButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel) { UIAlertAction in
        
    }
    alert.addAction(okeyButton)
    self.present(alert, animated: true, completion: nil)
    }
}

