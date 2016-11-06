//
//  ViewController.swift
//  mememe-v1
//
//  Created by Timothy Myers on 11/5/16.
//  Copyright © 2016 okayestprogrammer. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ImagePickerView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        print("DoSomethingCoolHere")
        dismiss(animated: true, completion: nil)
        
    }
    

    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        print("Cancel Button")
        dismiss(animated: true, completion: nil)
    }

    @IBAction func SelectImageFromAlbum(_ sender: Any) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }

}

