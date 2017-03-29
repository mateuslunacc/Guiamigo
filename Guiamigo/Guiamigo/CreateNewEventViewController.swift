//
//  CreateNewEventViewController.swift
//  Guiamigo
//
//  Created by Student on 3/28/17.
//  Copyright © 2017 hackatruck. All rights reserved.
//

import UIKit

class CreateNewEventViewController: UIViewController {

    @IBOutlet weak var eventNameTextLabel: UITextField!
    
    @IBOutlet weak var startTimeDatePicker: UIDatePicker!
    
    @IBOutlet weak var endTimeDatePicker: UIDatePicker!
    
    var newEvent: Event?
    var latitude = 0.0
    var longitude = 0.0
    
    @IBAction func saveNewEventButton(_ sender: UIBarButtonItem) {
        newEvent = Event(name: eventNameTextLabel.text!,
                         start: startTimeDatePicker.date as NSDate,
                         end: endTimeDatePicker.date as NSDate,
                         latitude: self.latitude,
                         longitude: self.longitude,
                         host: UserDAO.userLogged!)
        
        EventDAO.events.append(newEvent!)
        
        let alert: UIAlertController = UIAlertController(title: "Success",
                                                         message: "Event created successfully!",
                                                         preferredStyle: .alert)
        
        // 1.1. Caso queira adicionar funções
        let action: UIAlertAction = UIAlertAction(title: "OK", style: .default) { (action) in
            // Aqui insira o código a ser executado caso o usuário execute a ação
            //print("O usuário escolheu: \(action.title)")
            self.navigationController?.popToRootViewController(animated: true)
        }
        
        // 1.2. Adicione a ação na sua AlertController
        alert.addAction(action)
        
        // 2. Mostrando o alerta para o usuário
        self.present(alert, animated: true, completion: {
            //print("Alerta completo!")
        })
            
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
