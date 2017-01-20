//
//  MealViewController.swift
//  TestyMcTestFace
//
//  Created by Michael Shade on 1/7/17.
//  Copyright © 2017 Michael Shade. All rights reserved.
//

import UIKit

import os.log



class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    // MARK : Properties
    
    @IBOutlet weak var nameTextField: UITextField! //Text field
    
    @IBOutlet weak var photoImageView: UIImageView! // Image view
    
    @IBOutlet weak var ratingControl: RatingControl!  // rating ctl
    
    @IBOutlet weak var saveButton: UIBarButtonItem!   // save buton
    
   
    
     var meal: Meal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle User imput  though deligate callbacks
        nameTextField.delegate = self
        
        // Enable the Save button only if the text field has a valid Meal name.
        updateSaveButtonState()
        
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
        
        // Disable the Save button while editing.
        saveButton.isEnabled = false
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField)
    {
        updateSaveButtonState()
        navigationItem.title = textField.text
    
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
    
    
    //MARK: Navigation
     //This method lets you configure a view controller before it's presented.
   
    @IBAction func cancel(_ sender: UIBarButtonItem)
    {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        super.prepare(for: segue, sender: sender)
        
        guard let button = sender as? UIBarButtonItem, button === saveButton else
        {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        
        
        let name = nameTextField.text ?? ""
        let photo = photoImageView.image
        let rating = ratingControl.rating
        
        
        
        meal = Meal(name: name, photo: photo, rating: rating)

        
    }
    //MARK: Private Methods 
    
    
    private func updateSaveButtonState() {
        // Disable the Save button if the text field is empty.
        let text = nameTextField.text ?? ""
        saveButton.isEnabled = !text.isEmpty
    }
    


}

