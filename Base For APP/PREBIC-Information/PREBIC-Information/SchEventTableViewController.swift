//
//  SchEventTableViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 3/3/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit

class SchEventTableViewController: UITableViewController {

    // Properties 
    
    // array of Events 
    
    var events = [SchEvent]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load the list
        LoadEventList()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // This controlls how many section the table view has we just need one
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // this controlls how many rows since we only need the number of rows == the total number in the array
        return events.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "SchEventTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? SchEventTableViewCell else {fatalError("The dequeued cell is not an instance of SchEventTableViewCell")}
        
        // feches the correct SchEvent for the cell
        let event = events[indexPath.row]

        cell.eventLabel.text = event.eventName
        cell.locLabel.text = event.eventLocation
        cell.timeLabel.text = event.eventTime

        return cell
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        super.prepare(for: segue, sender: sender)
//        
//        switch segue.identifier ?? "" {
//        case "ShowEventDetail":
//            <#code#>
//        default:
//            <#code#>
//        }
//        
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
    
    
    // Private methods
    private func LoadEventList ()
    {
        // load two tests 
        
        let test1 = SchEvent(name: "First test", discription: "This is to test the first event", location: "Shade's MBP", time: "Sat Mar 01  8:00PM", speaker: "Michael Shade")
        
        let test2 = SchEvent(name: "Second test", discription: "This is to test the Second event", location: "Shade's MBP", time: "Sat Mar 01  8:30PM", speaker: "Michael Shade")
        
        let test3 = SchEvent(name: "Third test", discription: "This is to test the Third event", location: "Shade's MBP", time: "Sat Mar 01  9:00PM", speaker: "Michael Shade")
        
        // Add events to the array
        events += [test1, test2, test3]
    }

}
