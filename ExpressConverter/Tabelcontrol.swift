//
//  Tabelcontrol.swift
//  ExpressConverter
//
//  Created by JASI on 14/11/19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class Tabelcontrol: UITableViewController {

     var tosend = " "
     var del = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
      self.title = "select one"
        
        // Uncomment the following line to preserve selection between presentations
        
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
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
        

       
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? cellcontrol
       
        let data = storyboard?.instantiateViewController(withIdentifier: "ABC") as? ViewController
        
        data?.clbl = country[indexPath.row]
        
        data?.clbl2 = country[indexPath.row]
        
        
        
        tosend = country[indexPath.row]
        
        performSegue(withIdentifier: "val", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let vc = segue.destination as! ViewController
      
        
        print(del)
        if del == 1{
        
            vc.clbl = self.tosend
    
        }
     else if del == 0 {
        
            vc.clbl2 = self.tosend
        
        }
        
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
