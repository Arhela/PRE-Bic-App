//
//  ViewController.swift
//  First Test
//
//  Created by michael miller on 1/7/17.
//  Copyright © 2017 Mykal Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {

    //MARK: Properties
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var NameDatabaseLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        NameTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//MARK: Actions
    @IBAction func FullNameDatabse(_ sender: UIButton)
    {
        NameDatabaseLabel.text = "New Name Database"
    }

    
}

