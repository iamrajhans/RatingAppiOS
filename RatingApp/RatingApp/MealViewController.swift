//
//  ViewController.swift
//  RatingApp
//
//  Created by Rajhans Jadhao on 11/09/16.
//  Copyright © 2016 Rajhans Jadhao. All rights reserved.
//

import UIKit

class MealViewController: UIViewController , UITextFieldDelegate, UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIGestureRecognizerDelegate{
    
    @IBOutlet weak var mealNameTextField: UITextField!
    @IBOutlet weak var mealImageView: UIImageView!
    
    var meal :Meal?
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    override func viewDidLoad() {
        
        mealNameTextField.delegate = self
        if let meal = meal {
            navigationItem.title = meal.name
            mealNameTextField.text   = meal.name
            mealImageView.image = meal.photo
        }
        
    }
    
    
    // Actions
    @IBAction func selectImageFromPhotolibrary(sender: UITapGestureRecognizer) {
        let imagePicker = UIImagePickerController ()
        imagePicker.sourceType = .PhotoLibrary
        
        imagePicker.delegate = self
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        mealImageView.image = selectedImage
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func selectPicFromphotolib(sender: UIButton) {
        let imagePicker = UIImagePickerController ()
        imagePicker.sourceType = .PhotoLibrary
        
        imagePicker.delegate = self
        presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if saveButton === sender {
            let name = mealNameTextField.text ?? ""
            let photo = mealImageView.image
            
            meal = Meal(name: name, photo: photo, rating: 3)
        }
        
    }
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
