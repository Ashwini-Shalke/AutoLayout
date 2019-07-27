//
//  ViewController.swift
//  AutoLayout
//
//  Created by Ashwini shalke on 28/01/19.
//  Copyright © 2019 Ashwini shalke. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var mainPink = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
}

class ViewController: UIViewController {

    let bearImage: UIImageView = {
        let imageview = UIImageView(image:#imageLiteral(resourceName: "bear_first"))
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    let topImageContainerView : UIView = {
        let topview = UIView()
        topview.translatesAutoresizingMaskIntoConstraints = false
        return topview
     
    }()
    
    let descriptionTextView: UITextView = {
        let textView =  UITextView()
        //textView.text = "Work is Fun, Join us for more Fun"
        let attributedText = NSMutableAttributedString(string: "Work is fun, join us for more fun", attributes : [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 18)])
        attributedText.append(NSAttributedString(string: "\n\nAre you ready for loads and loads of fun ? Come lets join our stores for more fun", attributes : [NSAttributedStringKey.font
            : UIFont.systemFont(ofSize: 13)]))
        //textView.backgroundColor = .green
        textView.attributedText = attributedText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.backgroundColor = UIColor.darkGray
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitle("PREV", for: .normal)
        return button
    }()
    
    let NextButton : UIButton = {
       let button = UIButton(type: .system)
        button.setTitle("NEXT", for: .normal)
        button.setTitleColor(UIColor.mainPink, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        return button
    }()
    
    let pageController: UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.pageIndicatorTintColor = UIColor.gray
        pc.currentPageIndicatorTintColor = UIColor.mainPink
        return pc
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(topImageContainerView)
        topImageContainerView.addSubview(bearImage)
        view.addSubview(descriptionTextView)
        //view.addSubview(bottomStackView)
        bottomControlLayout()
        layout()
    }

    func layout() {
        topImageContainerView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        topImageContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        bearImage.centerXAnchor.constraint(equalTo: topImageContainerView.centerXAnchor).isActive = true
        bearImage.centerYAnchor.constraint(equalTo: topImageContainerView.centerYAnchor).isActive = true
        bearImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
    //  descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant : 0 ).isActive = true
        descriptionTextView.topAnchor.constraint(equalTo: topImageContainerView.bottomAnchor).isActive = true
        
        
    }
    
    
   fileprivate func bottomControlLayout(){
//      let redView =  UIView()
//      redView.backgroundColor = UIColor.red

//        let yellowView = UIView()
//        yellowView.backgroundColor = UIColor.yellow
    
//      let greenView = UIView()
//      greenView.backgroundColor = UIColor.green
    
        let bottomStackView = UIStackView(arrangedSubviews: [previousButton,pageController,NextButton])
        bottomStackView.distribution = UIStackViewDistribution.fillEqually
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            bottomStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            bottomStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            bottomStackView.heightAnchor.constraint(equalToConstant: 50)])
    
    }


}

