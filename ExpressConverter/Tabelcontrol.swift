//
//  Tabelcontrol.swift
//  ExpressConverter
//
//  Created by JASI on 14/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

protocol change {
  
    func following(countryname:String, number:Int )
}


class Tabelcontrol: UITableViewController {

     var tosend = " "
     var del = -1
    var changedelegate:change!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
      self.title = "select one"
        
        
    }

    // MARK: - Table view data source

    let country:[String] = ["IND", "ÜSA" , "CAD" ]
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return country.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
  
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? cellcontrol
    
        cell?.clbl.text = country[indexPath.row]
    
        return cell!
    
    }


    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //print(indexPath.row)
//
//       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? cellcontrol
//
//let data = storyboard?.instantiateViewController(withIdentifier: "ABC") as? ViewController
//        data?.clbl = country[indexPath.row]


    tosend = country[indexPath.row]
        
   let mainNavie = storyboard?.instantiateViewController(withIdentifier: "ABC" ) as? ViewController
        
     changedelegate.following(countryname: tosend, number: del)
      dismiss(animated: true, completion: nil)
    }

//
//    func helloworld() {
//
//        let main = UIStoryboard(name:"Main", bundle: Bundle.main)
//
//         let mainNavie = main.instantiateViewController(withIdentifier: "ABC" ) as? ViewController
//
//
//
//        mainNavie?.clbl = tosend
//        mainNavie?.tag = del
//        present(mainNavie!, animated: true, completion:nil)
//
//       print(del)
//
//
//    }
    

    

}
