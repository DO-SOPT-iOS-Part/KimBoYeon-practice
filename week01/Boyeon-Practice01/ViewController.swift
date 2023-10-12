//
//  ViewController.swift
//  Boyeon-Practice01
//
//  Created by 김보연 on 2023/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    private var idText: String = ""
    private var passwordText: String = ""
    
    @IBOutlet weak var colorSwitch: UISwitch!
    @IBOutlet weak var descrptionLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.buttonElement()
    
    }
    
    private func buttonElement() {
        guard let loginButton else {return}
        
        loginButton.layer.cornerRadius = 12
        loginButton.layer.masksToBounds = true
        loginButton.tintColor = .white
        loginButton.backgroundColor = .systemPink

    }

    @IBAction func colorChanged(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .black
        }
    }
    
    @IBAction func idTextFieldDidEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let idText = textField.text {
            self.idText = idText
        }
        textField.clearButtonMode = .always
    }
    
    @IBAction func pwTextFieldDidEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let passwordText = textField.text {
            self.passwordText = passwordText
        }
        textField.clearButtonMode = .always
    }
    
    @IBAction func loginButtonTap(_ sender: Any) {
        print("\(idText)\n\(passwordText)")
        pushToResultVC()
    }
    
    func pushToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultVC") as? ResultVC else {return}
        resultVC.setLabelText(id: idText,
                              password: passwordText)
        resultVC.delegate = self
//        resultVC.view.backgroundColor = colorSwitch.isOn ? .white : .black
        self.navigationController?.pushViewController(resultVC, animated: true)
        resultVC.loginDataCompletion = { data in
                    print("클로저로 받아온 email : \(data[0]), 클로저로 받아온 password : \(data[1])")
                }
        }
        
    func presentToResultVC() {
            guard let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultVC else {return}
            resultVC.setLabelText(id: idText,
                                  password: passwordText)
            self.present(resultVC, animated: true)
    }
}

extension ViewController: GetDataProtocol {
    func getLoginData(email: String, password: String) {
        print("받아온 email : \(email), 받아온 password : \(password)")
    }
}

