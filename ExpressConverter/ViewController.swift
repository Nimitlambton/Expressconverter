//
//  ViewController.swift
//  ExpressConverter
//
//  Created by MacStudent on 2019-11-11.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
   
    var tag = 0
    var clbl = "country"
    var clbl2 = "country"
    
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = " Express conv"
        
        
        print("tag value = \(tag)")

        if tag == 1 {
            
            print("heypoo")
            
            
            countrylabel2.text = clbl
        }
        else  {
            
            print ("heypoo2")
        
            countrylabel1.text = clbl
        }
        
            
        
        
        
        
            
        
        
        
        
    }
    
    
    //all the buttons
    
    @IBAction func changebtn(sender: UIButton) {
    
        
    tag = sender.tag
    
    performSegue(withIdentifier: "change", sender: self)
    
    
    
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! Tabelcontrol
        
        vc.del = self.tag
    
    }
    
    
    
    //button to change rate
    @IBAction func rateChngebtn(_ sender: Any) {
    
        
        
    }
    
    
    @IBAction func Resultbtn(_ sender: Any) {
    
        print("convertbtn")
        
    }
    
   
    
  


    
    
    

    
    
    
    
    
    
    
    
    
    
    
}

