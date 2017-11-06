//
//  ViewController.swift
//  Loggin
//
//  Created by macbookUser on 11/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        logginButton.layer.cornerRadius = 5 //Le da radio a los bordes del botón "Iniciar sesión"
      //  newCuentaButton.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var logginButton: UIButton!
    @IBAction func newCuentaButton(_ sender: UIButton) {
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

