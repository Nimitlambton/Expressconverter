//
//  ratecontrol.swift
//  ExpressConverter
//
//  Created by JASI on 17/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

protocol tochange {
    func tobechnage(selected:Int , changevalue: Double )
}

class ratecontrol: UIViewController {

  @IBOutlet weak var changelabel: UITextField!
  
    var selected = 0
    var changevalue = 0.0
    var ratechnagedelegate: tochange!
  

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    
    @IBAction func back(_ sender: Any) {
    
        changevalue =  Double(changelabel.text!) ?? 0
        
        let mainNavie = storyboard?.instantiateViewController(withIdentifier: "ABC" ) as? ViewController
        
    ratechnagedelegate.tobechnage(selected: selected, changevalue: changevalue)

       dismiss(animated: true, completion: nil)
    
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
