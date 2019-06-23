//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    
    let stories = StoryBank()
    var tracker = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadStories()
        
    }

   func loadStories(){
    
    storyTextView.text = stories.storyList[tracker].story;
    if(stories.storyList[tracker].answerA != ""){
    topButton.setTitle(stories.storyList[tracker].answerA , for: .normal)
    bottomButton.setTitle(stories.storyList[tracker].answerB, for: .normal)
    }else{
        ProgressHUD.showSuccess("STORY COMPLETED!")
        topButton.setTitle("" , for: .normal)
        bottomButton.setTitle("", for: .normal)
        topButton.isEnabled = false
        bottomButton.isEnabled = false;
    }
    
    
    }
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        checkNextStory(sender.tag)
        loadStories()
        
        
        
    
    }
    
    func checkNextStory(_ id: Int){
        
        if(tracker == 0){
            
            if(id == 1){
                
                tracker += 2
                
            }else{
                
                tracker += 1
            }
            
            
        }else if( tracker == 1 ){
            
            if(id == 1){
                
                tracker += 1
                
            }else{
                
                tracker += 2
            }
            
            
        }else if( tracker == 2){
            
            if(id==1){
                tracker+=3
            }else{
                
                tracker+=2
            }
            
        
        
    }
    



}
}
