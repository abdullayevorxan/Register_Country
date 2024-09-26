//
//  registerController.swift
//  CollectionViewPractice
//
//  Created by Orkhan Abdullayev on 23.09.24.
//

import UIKit

protocol RegisterControllerDelegate: AnyObject {
    func didEnterText(emailText: String, passwordText: String )
}


class registerController: UIViewController {
    
        @IBOutlet private weak var emailTextField: UITextField!
        @IBOutlet private weak var passWordTextField: UITextField!
        @IBOutlet private weak var phoneTextField: UITextField!
        @IBOutlet private weak var nameTextField: UITextField!
        @IBOutlet private weak var submitButton: UIButton!
    
    weak var delegate: RegisterControllerDelegate?

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func submitButtonClicked(_ sender: UIButton) {
        if let textEmail = emailTextField.text, !textEmail.isEmpty,
                   let textPassword = passWordTextField.text, !textPassword.isEmpty {
                    delegate?.didEnterText(emailText: textEmail, passwordText: textPassword)
                    dismiss(animated: true, completion: nil)
                }
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


