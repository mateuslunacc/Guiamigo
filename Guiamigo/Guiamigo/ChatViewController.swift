//
//  ChatViewController.swift
//  Guiamigo
//
//  Created by Student on 3/29/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var chatPicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.chatPicture.image = UIImage(named: "before-and-after-ios-7-names")
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
