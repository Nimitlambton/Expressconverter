//
//  ViewController.swift
//  ExpressConverter
//
//  Created by MacStudent on 2019-11-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
   
    //<-- all the labels --->

    //amount enter by user
    @IBOutlet weak var useramt: UITextField!
    
    //view1
    @IBOutlet weak var label1: UIView!
    //country1 flag
    @IBOutlet weak var countryFlag1: UIImageView!
    //country1label
    @IBOutlet weak var countrylabel1: UILabel!
    

    //view2
    @IBOutlet weak var label2: UIView!
    //country2 flag
    @IBOutlet weak var countryFlag2: UIImageView!
    //country2 label
    @IBOutlet weak var countrylabel2: UILabel!
    
    //Default and change label
    @IBOutlet weak var defaultChngeRate: UILabel!

    //resultlabel
    @IBOutlet weak var showResultlabel: UILabel!
    
    
    //all the buttons
    
   //btn to change country 1
    @IBAction func chngeCountry1btn(_ sender: Any) {
    }
    
    //btn to change country 2
    @IBAction func chngeCountry2btn(_ sender: Any) {
    }
    
    //button to change rate
    @IBAction func rateChngebtn(_ sender: Any) {
    
        
        
    }
    
    
    @IBAction func Resultbtn(_ sender: Any) {
    
        print("convertbtn")
        
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = " Express converter"
    }


    
    
    

    
    
    
    
    
    
    
    
    
    
    
}

