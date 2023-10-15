//
//  scrollViewController.swift
//  week02
//
//  Created by 김보연 on 10/14/23.
//

import UIKit

class scrollViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setLayout()
    }
    
    private let scrollView = UIScrollView()
    
    private var contentView = UIView()
    
    private var leftStackView: UIStackView = {
        let leftStackView = UIStackView()
        leftStackView.axis = .vertical
        leftStackView.distribution = .fillEqually
        leftStackView.spacing = 0
        return leftStackView
    } ()
    
    private var rightStackView: UIStackView = {
        let rightStackView = UIStackView()
        rightStackView.axis = .vertical
        rightStackView.distribution = .fillEqually
        rightStackView.spacing = 0
        return rightStackView
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
    
    private func setLayout() {
        self.view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
                                     scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
                                     scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
                                     scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)])
        
        NSLayoutConstraint.activate([contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
                                     contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
                                     contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
                                     contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
                                     contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)])
        
        
        
        
        [leftStackView, rightStackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        NSLayoutConstraint.activate([leftStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
                                     leftStackView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
                                     leftStackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
                                     leftStackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2)])
        
        NSLayoutConstraint.activate([rightStackView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
                                     rightStackView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
                                     rightStackView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
                                     rightStackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2)])
        
        [yellowBox, blackBox].forEach {
            NSLayoutConstraint.activate([$0.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2),
                                         $0.heightAnchor.constraint(equalToConstant: 600)])
            $0.translatesAutoresizingMaskIntoConstraints = false
            leftStackView.addArrangedSubview($0)
        }
        
        [greenBox, blueBox].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([$0.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2),
                                         $0.heightAnchor.constraint(equalToConstant: 600)])
            rightStackView.addArrangedSubview($0)
        }
        
    }
}

