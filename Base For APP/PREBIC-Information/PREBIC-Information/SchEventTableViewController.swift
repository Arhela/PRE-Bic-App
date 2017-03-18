//
//  SchEventTableViewController.swift
//  PREBIC-Information
//
//  Created by Michael Shade on 3/3/17.
//  Copyright © 2017 Unfazed Creations. All rights reserved.
//

import UIKit
import os.log

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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        super.prepare(for: segue, sender: sender)
        
        switch segue.identifier ?? "" {
        case "ShowEventDetail":
            // Get the segue destination
            guard let eventDetailViewController = segue.destination as? EventDetailViewViewController
            else
            {
                fatalError("Unexpected sender: \(sender)")
            }
            
            // Get the cell that sent the push message
            guard let selectedEventCell = sender as? SchEventTableViewCell else
            {
                fatalError("Unexpected sender: \(sender)")
                
            }
            // Get the index path to the array of events
            guard let indexPath = tableView.indexPath(for: selectedEventCell) else{
                fatalError("The selected cell is not being displayed by the table")
            }
            
            // capture the event at the index path
            let selectedEvent = events[indexPath.row]
            
            // fill in the optional event var
            eventDetailViewController.event = selectedEvent
            
            
            
            
        default:
            //fatalError("Unexpected Segue Identifier; \(segue.identifier)")
            // move to any clicked segue 
            dismiss(animated: true, completion: nil)
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
    // Private methods
    private func LoadEventList ()
    {
        // load two tests 
        
        let event1 = SchEvent(name: "Continental Breakfast", discription: "Breakfast", location: "Open Gates", time: "Sat Mar 01  7:30AM - 8:30AM", speaker: "N/a")
        
        let event2 = SchEvent(name: "Welcome Address", discription: "Address from Dr. Menon PHD", location: "Open Gates", time: "Sat Mar 01  8:30AM - 8:35AM", speaker: "Ramkumar Menon, PhD")
        
        let event3 = SchEvent(name: "Speaker from UTMB", discription: "Speaker from UTMB", location: "Open Gates", time: "Sat Mar 01  8:35AM - 8:45AM", speaker: "TBD")
        
        let event4 = SchEvent(name: "Presidential address", discription: "Presidential Address", location: "Open Gates", time: "Sat Mar 01  8:45AM - 9:00AM", speaker: "TBD")
        
        // Add events to the array
        events += [event1, event2, event3, event4]
    }

}
