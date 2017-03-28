//
//  CreateNewEventViewController.swift
//  Guiamigo
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit

class CreateNewEventViewController: UIViewController {

    @IBAction func saveNewEventButton(_ sender: UIBarButtonItem) {
        //newEvent = Event(name: <#T##String#>, start: startTimeDatePicker.date, end: startTimeDatePicker.date, latitude: <#T##Double#>, longitude: <#T##Double#>, host: <#T##User#>)
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBOutlet weak var eventNameTextLabel: UITextField!
    
    @IBOutlet weak var startTimeDatePicker: UIDatePicker!
    
    @IBOutlet weak var endTimeDatePicker: UIDatePicker!
    
    var newEvent: Event?
    var latitude = 0.0
    var longitude = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //newEvent?.name = self.eventNameTextLabel.text!
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
