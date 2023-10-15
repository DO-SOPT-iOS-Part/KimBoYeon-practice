//
//  stackViewController.swift
//  week02
//
//  Created by 김보연 on 10/14/23.
//

import UIKit

class stackViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setLayout()
    }
    
    private func setLayout() {
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [stackView.topAnchor.constraint(equalTo: view.topAnchor),
             stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
             stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
             stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)]
        )
        
        [firstStackView, secondStackView, thridStackView, fourthStackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            stackView.addArrangedSubview($0)
        }
        
        [yellowBox, whiteBox1].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            firstStackView.addArrangedSubview($0)
        }
        
        [whiteBox2, greenBox].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            secondStackView.addArrangedSubview($0)
        }
        
        [blackBox, whiteBox3].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            thridStackView.addArrangedSubview($0)
        }
        
        [whiteBox4, blueBox].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            fourthStackView.addArrangedSubview($0)
        }
//        firstStackView.addArrangedSubview(yellowBox)
//        secondStackView.addArrangedSubview(greenBox)
//        thridStackView.addArrangedSubview(blackBox)
//        fourthStackView.addArrangedSubview(blueBox)
    }
    
    private var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        return stackView
    } ()
    
    private var firstStackView: UIStackView = {
        let firstStackView = UIStackView()
        firstStackView.axis = .horizontal
        firstStackView.distribution = .fillEqually
        firstStackView.spacing = 0
        return firstStackView
    } ()
    
    private var secondStackView: UIStackView = {
        let secondStackView = UIStackView()
        secondStackView.axis = .horizontal
        secondStackView.distribution = .fillEqually
        secondStackView.spacing = 0
        return secondStackView
    } ()
    
    private var thridStackView: UIStackView = {
        let thridStackView = UIStackView()
        thridStackView.axis = .horizontal
        thridStackView.distribution = .fillEqually
        thridStackView.spacing = 0
        return thridStackView
    } ()
    
    private var fourthStackView: UIStackView = {
        let fourthStackView = UIStackView()
        fourthStackView.axis = .horizontal
        fourthStackView.distribution = .fillEqually
        fourthStackView.spacing = 0
        return fourthStackView
    } ()
    
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
    
    var whiteBox1: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    var whiteBox2: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    var whiteBox3: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    var whiteBox4: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
}
