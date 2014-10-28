//
//  ViewController.swift
//  Postcard
//
//  Created by Dave on 9/22/14.
//  Copyright (c) 2014 Dave McKenzie - Dog Tag Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessagetextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad() }
    // Do any additional setup after loading the view, typically from a nib.

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessagetextField.text
        messageLabel.textColor = UIColor.redColor()
        
    
        enterMessagetextField.text = ""
        enterMessagetextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

