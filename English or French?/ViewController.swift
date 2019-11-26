//
//  ViewController.swift
//  English or French?
//
//  Created by Attyani, Sawsan on 2019-11-26.
//  Copyright © 2019 Attyani, Sawsan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Mark Properties
    //Mark outlets
    
   
    @IBOutlet weak var textInputField: UITextView!
    
    @IBOutlet weak var outPutResultsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func analyzeText(_ sender: Any) {
        
        guard let textInput = textInputField.text, textInput.count > 0 else {
            outPutResultsLabel.text = "Please enter a sentace Hmmm..."
            return
        }
        
        var frenchNumbers = 0
        var englishNumbers = 0
        
        let french = "s S"
        let english = "t T"
        
        
        
        for characters in textInput {
            if french.contains(characters) {
                frenchNumbers+=1
            }
        }
        
        for characters in textInput {
                  if english.contains(characters) {
                      englishNumbers+=1
        
        
    }
    
    
            if frenchNumbers > englishNumbers {
                outPutResultsLabel.text = "this is most likely French"
            } else if frenchNumbers < englishNumbers {
                outPutResultsLabel.text = "This is most likely English"
            } else {
                outPutResultsLabel.text = "This is most likely French"
            }

    
    
}

}
}
