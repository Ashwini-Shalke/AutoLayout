//
//  ViewController.swift
//  AutoLayout
//
//  Created by Ashwini shalke on 28/01/19.
//  Copyright © 2019 Ashwini shalke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let bearImage: UIImageView = {
        let imageview = UIImageView(image: #imageLiteral(resourceName: "Cat"))
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    let topImageView : UIView = {
        let topview = UIView()
        //topview.backgroundColor = UIColor.blue
        topview.translatesAutoresizingMaskIntoConstraints = false
        return topview
     
    }()
    
    let descriptionTextView: UITextView = {
        let textView =  UITextView(frame: CGRect.zero)
        textView.text = "Work is Fun, Join us for more Fun"
        //textView.font
        textView.backgroundColor = .green
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //view.addSubview(bearImage)
        view.addSubview(topImageView)
        topImageView.addSubview(bearImage)
        topImageView.addSubview(descriptionTextView)
        //topImageView.addSubview(bearImage)
        
        layout()
    }

    func layout() {
        topImageView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        topImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5).isActive = true
        
        bearImage.centerXAnchor.constraint(equalTo: topImageView.centerXAnchor).isActive = true
        bearImage.centerYAnchor.constraint(equalTo: topImageView.centerYAnchor).isActive = true
        bearImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        bearImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        //descriptionTextView.topAnchor.constraint(equalTo: topImageView.topAnchor, constant: 200).isActive = true
        //descriptionTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
       // descriptionTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true

        //descriptionTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor, ).isActive = true
        
        descriptionTextView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        descriptionTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        descriptionTextView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        descriptionTextView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }


}

