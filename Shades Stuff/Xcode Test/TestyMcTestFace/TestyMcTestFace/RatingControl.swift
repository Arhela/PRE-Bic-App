//
//  RatingControl.swift
//  TestyMcTestFace
//
//  Created by Michael Shade on 1/8/17.
//  Copyright © 2017 Michael Shade. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView
{
    
   // MARK Properties  (varables)
    private var ratingButtons = [UIButton]()
    
    var rating = 0
        {
        didSet
        {
            updateButtonSelectionStates()
        }
    }
    
    
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0)
        {
        didSet
        {
            SetUpButtons()
        }
        }
    
    @IBInspectable var starCount: Int = 5
        {
        didSet
        {
            SetUpButtons()
        }
    }
    
    
    
    
    //MARK Initialization
    override init(frame: CGRect) // overides the
    {
        super.init(frame: frame)
        SetUpButtons()
        
    
    
    }
    
    required init(coder: NSCoder)
    {
        super.init(coder: coder)
        SetUpButtons()
        
    }
    
    //MARK Actions 
    func ratingButtonTapped(button : UIButton)
    {
       // print("Button Pressed!")
        
        guard  let index = ratingButtons.index(of: button ) else {
            fatalError("the button, \(button), is not in the ratingButtons array: \(ratingButtons)")
        }
        
        //Calculate the Rating of the slected buton
        let selectedRating = index + 1
        
        if selectedRating == rating
        {
            // ifselected rating equals the current rating rating = 0
            rating = 0
        } else
        {
            // set the rating 
            rating = selectedRating
        }
    }

   
    // PRIVATE METHODS
    private func SetUpButtons()
    {
       // Get rid of Old Buttons 
        for button in ratingButtons
        {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        
        //Clear the Array
        ratingButtons.removeAll()
        
      // Load Star buttons from Asset catologe 
        
        let bundle = Bundle(for: type(of: self) )
        
        let filledStar = UIImage(named: "Filled Star", in: bundle, compatibleWith: self.traitCollection)
        
        let emptyStar = UIImage(named:"Empty Star", in: bundle, compatibleWith: self.traitCollection)
        
        let highlightedStar = UIImage(named:"Highlighted Star", in: bundle, compatibleWith: self.traitCollection)
        
        // Create button loop
        for index in 0..<starCount
        {
        
            // Create Button
            let button = UIButton()
            // Determine Color
            //button.backgroundColor = UIColor.blue
            
            
            // replaced color with star
            
            button.setImage(emptyStar, for: .normal)
            button.setImage(filledStar, for: .selected)
            button.setImage(highlightedStar, for: .highlighted)
            button.setImage(highlightedStar, for: [.highlighted, .selected])
            
            
            
            // Add Constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            // buton.heightAnchor.constraint(equalToConstraint : starSize.height).isActive = true
            button.heightAnchor.constraint(equalToConstant: starSize.width).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Add accessibility Label
            button.accessibilityLabel = "Set \(index + 1) star rating"
            
            //Setup the Button action
            button.addTarget(self, action:
                #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // add button to the stack
            addArrangedSubview(button)
            
            // Add to the Array
            ratingButtons.append(button)
        }
        
        // update button selection states 
        updateButtonSelectionStates()
    }
    
    private func updateButtonSelectionStates()
    {
        for (index, button) in ratingButtons.enumerated()
        {
            // if the index of the button is less than the rating that button should be selected 
            button.isSelected = index < rating
            
            // Set the hint string for the currently selected star
            let hintString: String?
            if rating == index + 1 {
                hintString = "Tap to reset the rating to zero."
            } else {
                hintString = nil
            }
            
            // Calculate the value string
            let valueString: String
            switch (rating) {
            case 0:
                valueString = "No rating set."
            case 1:
                valueString = "1 star set."
            default:
                valueString = "\(rating) stars set."
            }
            
            // Assign the hint string and value string
            button.accessibilityHint = hintString
            button.accessibilityValue = valueString
        }
    }
    


}
