//
//  LogInViewController.swift
//  Guiamigo
//
//  Created by Student on 3/27/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!

    @IBAction func loginButton(_ sender: UIButton) {
        //print("quem ta logadoooooooo \(UserDAO.userLogged)")
        for user in UserDAO.getUsers() {
            if user.email == emailTextField.text &&
                user.password == passwordTextField.text {
                UserDAO.userLogged = user
            }
        }
        
        if UserDAO.userLogged != nil {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
    
    @IBAction func forgotButton(_ sender: UIButton) {
        
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
