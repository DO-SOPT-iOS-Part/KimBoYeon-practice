//
//  ResultVC.swift
//  Boyeon-Practice01
//
//  Created by 김보연 on 2023/10/12.
//

import UIKit

class ResultVC: ViewController {
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    var email: String = ""
    var password: String = ""
    
    var delegate: GetDataProtocol?
    
    var loginDataCompletion: (([String]) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateBackgroundColor()
        bindText()
    }
    
    
    private func bindText() {
            self.emailLabel.text = "email : \(email)"
        self.passwordLabel.text = "password : \(password)"
    }
    
    private func updateBackgroundColor() {
        if let presentingVC = self.navigationController?.viewControllers.first as? ViewController {
            view.backgroundColor = presentingVC.colorSwitch.isOn ? .white : .black
        }
    }
    
    @IBAction func backButtonTap(_ sender: Any) {
        if let navigationController = self.navigationController {
                navigationController.popViewController(animated: true)
            } else {
                self.dismiss(animated: true)
            }
        
        guard let loginDataCompletion else {return}
                loginDataCompletion([self.email, self.password])

    }
    
    func setLabelText(id: String,
                          password: String) {
        self.email = id
        self.password = password
    }
}


