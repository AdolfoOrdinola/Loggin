//
//  NewUserViewController.swift
//  Loggin
//
//  Created by macbookUser on 10/11/17.
//  Copyright © 2017 macbookUser. All rights reserved.
//

import UIKit

class NewUserViewController: UIViewController, UITextFieldDelegate {
    
    
    var indice = 0
    var cuentas : [[String]]!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NombreTextField.delegate = self
        ApellidoTextField.delegate = self
        UserNameTexField.delegate = self
        PasswordTextField.delegate = self
        ConfirmarPassTextField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBOutlet weak var NombreTextField: UITextField!
    @IBOutlet weak var ApellidoTextField: UITextField!
    @IBOutlet weak var UserNameTexField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var ConfirmarPassTextField: UITextField!
    
    
    
    
    
    @IBAction func NewUserButton(_ sender: UIButton) {
        
        
        
        
        if NombreTextField.text != "" && ApellidoTextField.text != "" && UserNameTexField.text != "" && PasswordTextField.text != "" && ConfirmarPassTextField.text != "" {
            //Primero hay que validar que los campos no estén vacíos
            
            
            
            
            
            if var arrUsuarios = UserDefaults.standard.object(forKey: "emojis") as? [[String]]{
                
                
                //Luego hay que arreglar el nuevo elemento
                let nuevaCuenta = [NombreTextField.text!, ApellidoTextField.text!, UserNameTexField.text!, PasswordTextField.text!, ConfirmarPassTextField.text! ]
                
                print(NombreTextField.text!) //Imprime en la consola el emoji ingresado
                print(ApellidoTextField.text!)  //Imprime en la consola la descripción ingresada
                print(UserNameTexField.text!)
                print(PasswordTextField.text!)
                print(ConfirmarPassTextField.text!)
                
                
                arrUsuarios.append(nuevaCuenta)  //Añade el arreglo nombrado 'nuevaCuenta' conformado por los objetos al arreglo padre llamado 'arrUsuarios'
                
                
                
                UserDefaults.standard.set(arrUsuarios, forKey: "emojis")
                
                
            } else{
                let nuevaCuenta = [NombreTextField.text!, ApellidoTextField.text!, UserNameTexField.text!, PasswordTextField.text!, ConfirmarPassTextField.text! ]
                
                UserDefaults.standard.set([nuevaCuenta], forKey: "emojis")
            }
            
            print("Se guardó correctamente")
            //Guardar el arreglo en memoria
            //Si no existe el arreglo en memoria
            //Creamos un arreglo nuevo
            //Guardamos en memoria
            
            
        } else {
            let alertController = UIAlertController(title: "Te faltaron datos", message: "Ingresa todos los campos", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            let cancelAction = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
            
            alertController.addAction(alertAction) //Unimos los dos (la alerta y la acción)
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
     var arrayOcupaciones = ["Empleado", "Estuadiante", "Servicios independientes"]
     
     
     
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
     return 1
     }
     
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
     return arrayOcupaciones.count
     }
     
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
     return arrayOcupaciones[row]
     }
     
     */
    
    
    
    
    
    
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    } //Oculta el teclado al tocar alguna parte de la pantalla
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
