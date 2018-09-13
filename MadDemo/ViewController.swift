//
//  ViewController.swift
//  MadDemo
//
//  Created by Daniel Victoria on 9/12/18.
//  Copyright © 2018 denyomonogatari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func didTapChangeTextButton(_ sender: Any) {
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func didTapChangeViewColorButton(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func didTapChangeTextColorButton(_ sender: Any) {
        textLabel.textColor = UIColor.green
    }
    
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
        
    }
    
    
}

