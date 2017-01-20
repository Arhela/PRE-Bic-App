//
//  MealViewController.swift
//  TestyMcTestFace
//
//  Created by Michael Shade on 1/7/17.
//  Copyright © 2017 Michael Shade. All rights reserved.
//

import UIKit

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK : Properties
    
    @IBOutlet weak var nameTextField: UITextField! //Text field
    
    @IBOutlet weak var photoImageView: UIImageView! // Image view
    
    @IBOutlet weak var ratingControl: RatingControl!
    
    var meal: Meal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle User imput  though deligate callbacks
        nameTextField.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK : Text field Delegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    // Hide the Keyboard
        textField.resignFirstResponder()
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
    
    }
    
   //MARK UIImagePickerControlerDelegate 
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        // Dismiss the picker if the user cancels 
        dismiss(animated: true, completion: nil)
      
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
       // set the image
        
        
        //  The Info directory may contain other references to the file, we want the original
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as?UIImage
            else
        {
            fatalError("Expected a dictionary containing an image , but was provided the folowing: / info")
        }
        
        photoImageView.image = selectedImage // sets the image for the above gaurd statement 
        
        // Dismiss the picker 
        dismiss(animated: true, completion: nil )
    
    }
    //MARK : Actions
   
   // Geture rec
    @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer)
    {
        nameTextField.resignFirstResponder() // Hides keyboard if need be 
        // create a UI Picker clt to change the image on tap
        let imagePickerController = UIImagePickerController()  // Creates picker controler
        imagePickerController.sourceType = .photoLibrary  // ONly alowes photoes to be picked, not taken
        imagePickerController.delegate = self  // Makes sure the Controler is notified when the user picks a photo
        present(imagePickerController, animated: true,completion: nil) // opens the camera roll
    }
    
 
    // Removed Method
    //  @IBAction func setDefaultLabelText(_ sender: UIButton) { // Changes the Label text on tap
   //     mealNameLabel.text = "Default Text"
   // }

}

