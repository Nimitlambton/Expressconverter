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
    
 //all global vaiables
    
    var rate = 0.0
    
    var useramount = 0.0
    
    var ifchnage = 0
    
    
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
        present(sectionvc, animated: false, completion: nil)
        
    
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
    
    let sectionvc = storyboard?.instantiateViewController(withIdentifier:"ratecontrol") as! ratecontrol
        
        sectionvc.selected = 1
        
        
        sectionvc.ratechnagedelegate = self
        
        present(sectionvc, animated: false, completion: nil)
        
    }
    
    
    @IBAction func Resultbtn(_ sender: Any) {
    
       
        if ifchnage == 1{
            
        
            var result = rate * useramount
            showResultlabel.text = "\(result)"
        
        }
        
        
        else{
        
            print(countrylabel1.text!)
            
            print(countrylabel2.text!)
        //USA
    if countrylabel1.text! == "USA"  &&  countrylabel2.text! == "IND"{

     
     rate = 2
     useramount = Double(useramt.text!) ?? 0
     var result =  rate * useramount
     showResultlabel.text = "\(result)"
    
        }
        
    else if countrylabel1.text! == "USA"   &&  countrylabel2.text! == "CAD"{
        
        rate = Double(defaultChngeRate.text!) ?? 0
        rate = 3
        useramount = Double(useramt.text!) ?? 0
        var result =  rate * useramount
        showResultlabel.text = "\(result)"
        
        
    }
        
        //INDIA
        
    else if countrylabel1.text! == "IND"  &&  countrylabel2.text! == "CAD"{
        
        rate = Double(defaultChngeRate.text!) ?? 0
        rate = 4
        useramount = Double(useramt.text!) ?? 0
        var result =  rate * useramount
        showResultlabel.text = "\(result)"
        
        
    }
        
    else if countrylabel1.text! == "IND"  &&  countrylabel2.text! == "USA"{
        
        rate = Double(defaultChngeRate.text!) ?? 0
        rate = 5
        useramount = Double(useramt.text!) ?? 0
        var result =  rate * useramount
        showResultlabel.text = "\(result)"
        
        
    }
        //CAD
    else if countrylabel1.text! == "CAD"  &&  countrylabel2.text! == "USA"{
        
        rate = Double(defaultChngeRate.text!) ?? 0
        rate = 6
        useramount = Double(useramt.text!) ?? 0
        var result =  rate * useramount
        showResultlabel.text = "\(result)"
        
        
    }
        
        
    else if countrylabel1.text! == "CAD"  &&  countrylabel2.text! == "USA"{
        
        rate = Double(defaultChngeRate.text!) ?? 0
        rate = 7
        useramount = Double(useramt.text!) ?? 0
        var result =  rate * useramount
        showResultlabel.text = "\(result)"
        
        
    }
        
        
        
    else{
        
      showResultlabel.text = "0.0"
        
     
            }
    
        }
        
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

extension ViewController : tochange{
  
    func tobechnage(selected: Int, changevalue: Double) {
        
        if selected == 1{
            
            ifchnage = selected
            rate = changevalue
            defaultChngeRate.text = "\(rate)"
            
        }
    
    
    }
    
    
    
    
}
