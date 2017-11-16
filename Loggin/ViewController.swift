//
//  ViewController.swift
//  Loggin
//
//  Created by macbookUser on 11/10/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    //UIPickerViewDataSource, UIPickerViewDelegate
    //Ver qué onda con el ViewController
    
    
    @IBOutlet weak var userTexField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    

    
    
  //  var indice = 0
  //  var cuentasLocales : [[String]]!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        userTexField.delegate = self
        passwordTextField.delegate = self
        
        
        
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    
    

    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    } //Oculta el teclado al tocar alguna parte de la pantalla
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
     
     //Botón de iniciar sesión
     @IBOutlet weak var logginButton: UIButton!
     
     
     
     @IBAction func newCuentaButton(_ sender: UIButton) {
     
     
     
     
     
     //Este botón es para iniciar sesión, tendrá que comprobar que el username y el password coincidan en el arreglo para poder acceder al contenido, de lo contrario debe de indicar que no coinciden los datos ingresados.
     
     //Opcional, si se ingresa incorrectamente la contraseña 3 veces se le bloquea por algún tiempo
     
     
     }
     
     */
    
    
    
    
    
    
}

















