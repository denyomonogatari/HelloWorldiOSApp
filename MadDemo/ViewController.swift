//
//  ViewController.swift
//  MadDemo
//
//  Created by Daniel Victoria on 9/12/18.
//  Copyright © 2018 denyomonogatari. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

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
    
    // change the text when enter is pressed while text field is selected
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
        return true
    }
    
    @IBAction func didTapChangeTextButton(_ sender: Any) {
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func didTapChangeViewColorButton(_ sender: Any) {
        view.backgroundColor = getRandomColor()
    }
    
    @IBAction func didTapChangeTextColorButton(_ sender: Any) {
        textLabel.textColor = getRandomColor()
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello!"
        view.backgroundColor = backgroundColor
        textLabel.textColor = UIColor.black
        
    }
    
    // generate a random color 
    func getRandomColor() -> UIColor{
        
        var randomRed:CGFloat = CGFloat(drand48())
        
        var randomGreen:CGFloat = CGFloat(drand48())
        
        var randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
    }
    
}

