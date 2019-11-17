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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = " Express conv"
        
    }
    
    
    //all the buttons
    
    @IBAction func changebtn(sender: UIButton) {
    
        
        
    let tag = sender.tag
    
    print(tag)
    //performSegue(withIdentifier: "change", sender: self)
    
    let sectionvc = storyboard?.instantiateViewController(withIdentifier:"tabel") as! Tabelcontrol
        
        sectionvc.del = tag
        sectionvc.changedelegate = self
        present(sectionvc, animated: true, completion: nil)
        
    
    }
    

//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        let vc = segue.destination as! Tabelcontrol
//
//        vc.del = self.tag
//
//    }
    
    
    
    //button to change rate
    @IBAction func rateChngebtn(_ sender: Any) {
    
        
        
    }
    
    
    @IBAction func Resultbtn(_ sender: Any) {
    
        print("convertbtn")
        
    }
    
    
}

extension ViewController : change{
    func following(countryname: String, number: Int) {
        
        if number == 0{
            
            countrylabel1.text = countryname
            
        }
        else if number == 1{
            
             countrylabel2.text = countryname
            
        }
        
        
    }
    
    
    
}
