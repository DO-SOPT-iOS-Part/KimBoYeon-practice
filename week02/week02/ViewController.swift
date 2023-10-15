//
//  ViewController.swift
//  week02
//
//  Created by 김보연 on 10/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setLayout()
    }
    
    private func setLayout() {
        [yellowBox, greenBox, blackBox, blueBox].forEach {[weak self] view in
            guard let self else {return}
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        
        let height = UIScreen.main.bounds.height / 4
        let width = UIScreen.main.bounds.width / 2
        
            NSLayoutConstraint.activate(
                [yellowBox.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
                 yellowBox.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
                 yellowBox.widthAnchor.constraint(equalToConstant: width),
                 yellowBox.heightAnchor.constraint(equalToConstant: height)]
            )
            
            NSLayoutConstraint.activate(
                [greenBox.topAnchor.constraint(equalTo: self.yellowBox.bottomAnchor, constant: 0),
                 greenBox.leadingAnchor.constraint(equalTo: self.yellowBox.trailingAnchor, constant: 0),
                 greenBox.widthAnchor.constraint(equalToConstant: width),
                 greenBox.heightAnchor.constraint(equalToConstant: height)]
            )
            
            NSLayoutConstraint.activate(
                [blackBox.topAnchor.constraint(equalTo: self.greenBox.bottomAnchor, constant: 0),
                 blackBox.trailingAnchor.constraint(equalTo: self.greenBox.leadingAnchor, constant: 0),
                 blackBox.widthAnchor.constraint(equalToConstant: width),
                 blackBox.heightAnchor.constraint(equalToConstant: height)]
            )
            
            NSLayoutConstraint.activate(
                [blueBox.topAnchor.constraint(equalTo: self.blackBox.bottomAnchor, constant: 0),
                 blueBox.leadingAnchor.constraint(equalTo: self.blackBox.trailingAnchor, constant: 0),
                 blueBox.widthAnchor.constraint(equalToConstant: width),
                 blueBox.heightAnchor.constraint(equalToConstant: height)]
            )
    }
    
    var yellowBox: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    var greenBox: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    var blackBox: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    var blueBox: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
}
