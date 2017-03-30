//
//  SignInViewController.swift
//  Guiamigo
//
//  Created by Student on 3/27/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backgroundImage.image = UIImage(named: "background-image")
        self.tabBarController?.tabBar.isHidden = true

        // Do any additional setup after loading the view.
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
