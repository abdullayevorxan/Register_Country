//
//  loginController.swift
//  CollectionViewPractice
//
//  Created by Orkhan Abdullayev on 23.09.24.
//

import UIKit

class loginController: UIViewController, RegisterControllerDelegate {
    func didEnterText(emailText: String, passwordText: String) {
        emailTextField.text = emailText
        passwordTextField.text = passwordText
    }
    
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var Image: UIImageView!
    @IBOutlet private weak var loginButton: UIButton!
    @IBOutlet private weak var registerButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerClick(_sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let VC = storyboard.instantiateViewController(withIdentifier: "registerController") as? registerController  {
            VC.delegate = self
            self.present(VC, animated: true, completion: nil)
        }
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let loginVC = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController {
            self.navigationController?.pushViewController(loginVC, animated: true)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
