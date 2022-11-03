//
//  ViewController.swift
//  Assignment1
//
//  Created by Brahmastra on 03/11/22.
//  Copyright © 2022 Brahmastra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var stateswitch:UISwitch!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var printerButton: UIButton!
    @IBOutlet weak var firstLable: UILabel!
   
    @IBOutlet weak var firstTxtfield: UITextField!
    
    
//    var imageView = UIImageView()
//    var size: CGFloat = 150
//
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stateswitch.addTarget(self, action: #selector(stateChanged), for: UIControl.Event.valueChanged)
//        imageView.backgroundColor = .blue
//              imageView.frame = CGRect(x: 0, y: 0, width: size, height: size)
//              imageView.center = view.center
//              self.view.addSubview(imageView)
        
        
        
        
        
        
        configureUI()
        
    }
  
    func configureUI(){
        //radis corner
        loginButton.layer.cornerRadius = 10
        firstLable.layer.cornerRadius = 4
       // secondLable.layer.cornerRadius = 4
        
          //Border
           loginButton.layer.borderWidth = 1
        firstLable.layer.borderWidth =  1
      //  secondLable.layer.borderWidth = 1
        
         firstLable.layer.borderColor = UIColor.red.cgColor
       //  secondLable.layer.borderColor = UIColor.red.cgColor
        loginButton.layer.borderColor = UIColor.red.cgColor
       
        
        
        
        //shadow
        loginButton.layer.borderColor = UIColor.white.cgColor
loginButton.layer.shadowOffset = CGSize(width: 0.0,height: 5.0)
        
        loginButton.layer.shadowRadius = 2.0
        loginButton.layer.shadowOpacity = 3.0
        
        firstLable.layer.borderColor = UIColor.white.cgColor
        firstLable.layer.shadowOffset = CGSize(width: 0.0,height: 5.0)
                
                firstLable.layer.shadowRadius = 2.0
                firstLable.layer.shadowOpacity = 3.0
                
       
    
    
    
    
    
    }
    // mark : IBAction
    @IBAction func LoginButtonPress(_ sender: Any) {
        print("login button has pressed")
        
    }
    @IBAction func printerButton(_ sender: Any){
        print("print button has pressed")
        
    }
//    @IBAction func sliderDidSlide(_ sender: UISlider){
//        let value = sender.value
//
//           imageView.frame = CGRect(x: 0, y: 0, width: size * CGFloat(value),
//                                                height: size * CGFloat(value))
//             imageView.center = view.center
//    }
    @IBAction func buttonTapped(_ sender: Any){
        if stateswitch.isOn{
            firstTxtfield.text = "The switch is off"
            stateswitch.setOn(false, animated: true)
        }
        else{
            
               firstTxtfield.text = "The switch is on"
                     stateswitch.setOn(true, animated: true)
            
        }
        
        
    }
    
    @objc func stateChanged(switchState: UISwitch){
           if stateswitch.isOn{
                 firstTxtfield.text = "The switch is ON"
                 //stateswitch.setOn(false, animated: true)
             }
             else{
                 
                    firstTxtfield.text = "The switch is OFF"
                        //  stateswitch.setOn(true, animated: true)
                
             }
             
             
             }
                 
}

