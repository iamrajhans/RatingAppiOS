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
    
    override func viewDidLoad() {
        
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
}

