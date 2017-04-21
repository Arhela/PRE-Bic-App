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

       // String var to capture name
        let nameCheck = event.eventName
        
        // atributes to bold things
        let attr = [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 19)]
        
        switch nameCheck {
        case "Monday May 08":
           let mNameString = NSMutableAttributedString(string: event.eventName, attributes: attr)
           let mLocString = NSMutableAttributedString(string: event.eventLocation, attributes: attr)
           let mTimeString = NSMutableAttributedString(string: event.eventTime, attributes: attr)
            cell.eventLabel.attributedText = mNameString
            cell.locLabel.attributedText = mLocString
            cell.timeLabel.attributedText = mTimeString
        case "Tuesday May 09":
            let tNameString = NSMutableAttributedString(string: event.eventName, attributes: attr)
            let tLocString = NSMutableAttributedString(string: event.eventLocation, attributes: attr)
            let tTimeString = NSMutableAttributedString(string: event.eventTime, attributes: attr)
            cell.eventLabel.attributedText = tNameString
            cell.locLabel.attributedText = tLocString
            cell.timeLabel.attributedText = tTimeString
        case "Wednesday May 10":
            let wNameString = NSMutableAttributedString(string: event.eventName, attributes: attr)
            let wLocString = NSMutableAttributedString(string: event.eventLocation, attributes: attr)
            let wTimeString = NSMutableAttributedString(string: event.eventTime, attributes: attr)
            cell.eventLabel.attributedText = wNameString
            cell.locLabel.attributedText = wLocString
            cell.timeLabel.attributedText = wTimeString
        case "Lunch":
            let lNameString = NSMutableAttributedString(string: event.eventName, attributes: attr)
            let lLocString = NSMutableAttributedString(string: event.eventLocation, attributes: attr)
            let lTimeString = NSMutableAttributedString(string: event.eventTime, attributes: attr)
            cell.eventLabel.attributedText = lNameString
            cell.locLabel.attributedText = lLocString
            cell.timeLabel.attributedText = lTimeString
        case "Coffee Break":
            let cNameString = NSMutableAttributedString(string: event.eventName, attributes: attr)
            let cLocString = NSMutableAttributedString(string: event.eventLocation, attributes: attr)
            let cTimeString = NSMutableAttributedString(string: event.eventTime, attributes: attr)
            cell.eventLabel.attributedText = cNameString
            cell.locLabel.attributedText = cLocString
            cell.timeLabel.attributedText = cTimeString
        case "Wine & Cheese Reception":
            let wcNameString = NSMutableAttributedString(string: event.eventName, attributes: attr)
            let wcLocString = NSMutableAttributedString(string: event.eventLocation, attributes: attr)
            let wcTimeString = NSMutableAttributedString(string: event.eventTime, attributes: attr)
            cell.eventLabel.attributedText = wcNameString
            cell.locLabel.attributedText = wcLocString
            cell.timeLabel.attributedText = wcTimeString
        case "PREBIC DINNER":
            let dNameString = NSMutableAttributedString(string: event.eventName, attributes: attr)
            let dLocString = NSMutableAttributedString(string: event.eventLocation, attributes: attr)
            let dTimeString = NSMutableAttributedString(string: event.eventTime, attributes: attr)
            cell.eventLabel.attributedText = dNameString
            cell.locLabel.attributedText = dLocString
            cell.timeLabel.attributedText = dTimeString
        default:
            cell.eventLabel.text = event.eventName
            cell.locLabel.text = event.eventLocation
            cell.timeLabel.text = event.eventTime
        }
        
        
        

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
                fatalError("Unexpected sender: \(String(describing: sender))")
            }
            
            // Get the cell that sent the push message
            guard let selectedEventCell = sender as? SchEventTableViewCell else
            {
                fatalError("Unexpected sender: \(String(describing: sender))")
                
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
        // load Events
        
       
        
        
        
        
        // Monday events
        
        
         let satHeader = SchEvent(name: "Monday May 08", discription: "Monday Events", location: "Open Gates", time: "7:15AM - 6:15PM", speaker: "N/a")
        
        let satShutle1 = SchEvent(name: "Shuttle 1 leaves", discription: "Shuttle 1 leaves", location: "Galvez", time: "7:15AM - 7:15AM", speaker: "N/a")
        
       let satShutle2 = SchEvent(name: "Shuttle 2 leaves", discription: "Shuttle 2 leaves", location: "Galvez", time: "7:45AM - 7:45AM", speaker: "N/a")
        
       
       
        
        let event1 = SchEvent(name: "Continental Breakfast", discription: "Breakfast", location: "Open Gates", time: "7:30AM - 8:30AM", speaker: "N/a")
        
        let event2 = SchEvent(name: "Welcome Address", discription: "Address from Dr. Menon PhD", location: "Open Gates", time: "8:30AM - 8:35AM", speaker: "Ramkumar Menon, PhD")
        
       // let event3 = SchEvent(name: "Speaker from UTMB", discription: "Speaker from UTMB", location: "Open Gates", time: //"Mon May 08 8:35AM - 8:45AM", speaker: "TBD")
        
        let event4 = SchEvent(name: "Presidential Address", discription: "Presidential Address", location: "Open Gates", time: "8:35AM - 9:00AM", speaker: "Hanns Helmer, MD")
        
         let UpdatedEvent1 = SchEvent(name: "PREBIC Accomplishments", discription: "PREBIC accomplishments", location: "Open Gates", time: "9:0AM - 9:15AM", speaker: "Calvin J Hobel, MD")
        
        
         let event5 = SchEvent(name: "Future of PREBIC", discription: "Future of PREBIC", location: "Open Gates", time: "9:15AM - 9:30AM", speaker: "Nanbert Zhong, MD, PhD")
        
       // let event6 = SchEvent(name: "PREBIC Accomplishments", discription: "PREBIC Accomplishments", location: "Open //Gates", time: "Mon May 08 9:15AM - 9:30AM", speaker: "Calvin J Hobel, MD")
        
        let event7 = SchEvent(name: "PREBIC Organization", discription: "PREBIC organization (registration, by-law)", location: "Open Gates", time: "9:30AM - 9:45AM", speaker: "Elizabeth Bonney, MD")
        
        let event8 = SchEvent(name: "PREBIC Scientific Agenda", discription: "PREBIC scientific agenda", location: "Open Gates", time: "9:45AM - 10:00AM", speaker: "Cynthia Gyamfi-Bannerman, MD, MS")
        
        let event9 = SchEvent(name: "The Year in Preterm Birth", discription: "The year in preterm birth—Clinical", location: "Open Gates", time: "10:00AM - 10:25AM", speaker: "Alfred Brann, MD")
        
        let event10 = SchEvent(name: "Q & A", discription: "Q & A", location: "Open Gates", time: "10:25AM - 10:30AM", speaker: "TBD")
        
        let event11 = SchEvent(name: "Coffee Break", discription: "Coffee Break", location: "Open Gates", time: "10:30AM - 10:45AM", speaker: "N/a")
        
        let event12 = SchEvent(name: "The Year in Preterm Birth", discription: "The year in preterm birth —Basic Science", location: "Open Gates", time: "10:45AM - 11:10AM", speaker: "Leslie Myatt, PhD")
        
        let event13 = SchEvent(name: "Q & A", discription: "Q & A", location: "Open Gates", time: "11:10AM - 11:15AM", speaker: "TBD")
        
        let event14 = SchEvent(name: "PREBIC Working Groups", discription: "PREBIC Working groups assignments and rationale", location: "Open Gates", time: "11:15AM - 11:40AM", speaker: "Scott M Williams, PhD")
        
        let event15 = SchEvent(name: "PREBIC Working Groups", discription: "Assignments, effective functioning and expectations from working groups", location: "Open Gates", time: "11:40AM - 12:00PM", speaker: "Sam Mesiano, PhD")
        
         let event16 = SchEvent(name: "DISCUSSION", discription: "DISCUSSION", location: "Open Gates", time: "12:00PM - 12:15PM", speaker: "N/a")
        
        let event17 = SchEvent(name: "Lunch", discription: "Lunch", location: "N/a", time: "12:15PM - 01:30PM", speaker: "N/a")
        
        let event18 = SchEvent(name: "WORKING GROUPS MEET", discription: "WORKING GROUPS MEET", location: "Open Gates", time: "1:30PM - 3:30PM", speaker: "N/a")
        
        let event19 = SchEvent(name: "Coffee Break", discription: "COFFEE", location: "Open Gates", time: "3:30PM - 4:00PM", speaker: "N/a")
        
        let event20 = SchEvent(name: "WORKING GROUP MEET", discription: "WORKING GROUP MEET", location: "Open Gates", time: "4:00PM - 5:15PM", speaker: "N/a")
        
        let updatedEvent2 = SchEvent(name: "Wine & Cheese Reception", discription: "Wine & Cheese Reception", location: "Open Gates", time: "5:15PM - 6:00PM", speaker: "N/a")
        
         let updatedEvent3 = SchEvent(name: "Shuttles to Hotel Galvez", discription: "Shuttles to Hotel Galvez", location: "Open Gates", time: "6:00PM - 6:15PM", speaker: "N/a")
        
       //-----------------------------------------------------------------------------------------------------------
        // Tuesday vents
        let sunHeader = SchEvent(name: "Tuesday May 09", discription: "Tuesday", location: "Open Gates", time: "7:15AM - 10:00PM", speaker: "N/a")
        
        
        let sunShutle1 = SchEvent(name: "Shuttle 1 leaves", discription: "Shuttle 1 leaves", location: "Galvez", time: "7:15AM - 7:15AM", speaker: "N/a")
        
        let sunShutle2 = SchEvent(name: "Shuttle 2 leaves", discription: "Shuttle 2 leaves", location: "Galvez", time: "7:45AM - 7:45AM", speaker: "N/a")
        
        //-------------------------------------------------------------------------------------------------------------
        
        let event21 = SchEvent(name: "Preterm Birth Prevention", discription: "Preterm birth prevention: A clinical perspective and prematurity", location: "Open Gates", time: "8:30AM - 8:55AM", speaker: "George Saade, MD")
        
        let event22 = SchEvent(name: "Evolutionary Implications...", discription: "Evolutionary implications of gestational variation", location: "Open Gates", time: "8:55AM - 9:15AM", speaker: "Derek Wildman")
        
        
        //-------------------------------------------------------------------------------------------------------------
        
        
        
        //let event23 = SchEvent(name: "Q & A", discription: "Q & A", location: "Open Gates", time: "Tue May 09 9:10AM - 9:15AM", speaker: "TBD")
        
        let event24 = SchEvent(name: "Preterm Birth Research in India", discription: "Preterm birth research in India", location: "Open Gates", time: "9:15AM - 9:25AM", speaker: "Pallavi Kshetrapal, PhD")
        
         let event25 = SchEvent(name: "Preterm Birth Research in Africa", discription: "Preterm birth research in Africa", location: "Open Gates", time: "9:25AM - 9:35AM", speaker: "Samuel Obed, MD")
        
        let event26 = SchEvent(name: "Preterm Birth Research in Korea", discription: "Preterm Birth Research in Korea", location: "Open Gates", time: "9:35AM - 9:45AM", speaker: "Kim Young Ju, MD, PhD")
        
        let event27 = SchEvent(name: "Preterm Birth Research in China", discription: "Preterm Birth Research in China", location: "Open Gates", time: "9:45AM - 9:55AM", speaker: "Ciaxia Liu, MD & Dr. Duanjin Chen, MD")
        
        let event28 = SchEvent(name: "Coffee Break", discription: "Coffee Break", location: "Open Gates", time: "10:00AM - 10:30AM", speaker: "N/a")
        
        let event29 = SchEvent(name: "Development of Young Investigator", discription: "Development of young investigator", location: "Open Gates", time: "10:30AM - 10:40AM", speaker: "Bo Jacobsson/Indira Mysorekar")
        
        let event30 = SchEvent(name: "Journal of Preterm Birth", discription: "Journal of Preterm Birth", location: "Open Gates", time: "10:40AM - 10:50AM", speaker: "Scott M Williams, PhD")
        
         let event31 = SchEvent(name: "PREBIC Book", discription: "PREBIC Book", location: "Open Gates", time: "10:50AM - 11:00AM", speaker: "Ronnie Lamont, MD")
        
        let event32 = SchEvent(name: "WORKING GROUPS MEET", discription: "WORKING GROUPS MEET", location: "Open Gates", time: "11:00AM - 12:30PM", speaker: "N/a")
        
        let event33 = SchEvent(name: "Lunch", discription: "Lunch", location: "N/a", time: "12:30PM - 1:30PM", speaker: "N/a")
        
        let event34 = SchEvent(name: "WORKING GROUPS MEET", discription: "WORKING GROUPS MEET", location: "Open Gates", time: "1:30PM - 3:30PM", speaker: "N/a")
        
        let event35 = SchEvent(name: "Coffee Break", discription: "Coffee Break", location: "Open Gates", time: "3:30PM - 3:45PM", speaker: "N/a")
        
        let event36 = SchEvent(name: "Group 1 Summary", discription: "Summary of working group activities (15 minutes each including discussion)", location: "Open Gates", time: "3:45PM - 4:00PM", speaker: "N/a")
        
        let event37 = SchEvent(name: "Group 2 Summary", discription: "Summary of working group activities (15 minutes each including discussion)", location: "Open Gates", time: "4:00PM - 4:15PM", speaker: "N/a")
        
         let event38 = SchEvent(name: "Group 3 Summary", discription: "Summary of working group activities (15 minutes each including discussion)", location: "Open Gates", time: "4:15PM - 4:30PM", speaker: "N/a")
        
        let event39 = SchEvent(name: "Group 4 Summary", discription: "Summary of working group activities (15 minutes each including discussion)", location: "Open Gates", time: "4:30PM - 4:45PM", speaker: "N/a")
        
        let event40 = SchEvent(name: "Group 5 Summary", discription: "Summary of working group activities (15 minutes each including discussion)", location: "Open Gates", time: "4:45PM - 5:00PM", speaker: "N/a")
        
        let event41 = SchEvent(name: "Group 6 Summary", discription: "Summary of working group activities (15 minutes each including discussion)", location: "Open Gates", time: "5:00PM - 5:15PM", speaker: "N/a")
        
        let event42 = SchEvent(name: "Review and Summary", discription: "Review and Summary (to be continued on day # 3)", location: "Open Gates", time: "5:15PM - 5:45PM", speaker: "N/a")
        
        let updatedEvent4 = SchEvent(name: "Shuttles to Hotel Galvez", discription: "Shuttles to Hotel Galvez)", location: "Open Gates", time: "5:45PM - 6:00PM", speaker: "N/a")
        
        let event43 = SchEvent(name: "PREBIC DINNER", discription: "Dinner at Shearns Moody Gardens Website: http://www.moodygardenshotel.com/shearns", location: "Shearns Moody Gardens", time: "7:00PM - 10:00PM", speaker: "N/a")
        
        //-----------------------------------------------------------------------------------------------------------
        // Wdnesday Events
        let WedHeader = SchEvent(name: "Wednesday May 10", discription: "Wednesday Events", location: "Open Gates", time: "7:00AM - 11:00AM", speaker: "N/a")
        
        
//        let wedShutle1 = SchEvent(name: "Shuttle 1 leaves", discription: "Shuttle 1 leaves", location: "Galvez", time: "Wed May 10 7:15AM - 7:15AM", speaker: "N/a")
//        
//        let wedShutle2 = SchEvent(name: "Shuttle 2 leaves", discription: "Shuttle 2 leaves", location: "Galvez", time: "Wed May 10 7:45AM - 7:45AM", speaker: "N/a")
        
        let event44 = SchEvent(name: "Continental breakfast", discription: "Continental breakfast", location: "Hotel Galvez meeting room", time: "7:00AM - 8:00AM", speaker: "N/a")
        
         let event45 = SchEvent(name: "Ethics in Preterm Birth Research", discription: "Ethics in Preterm Birth Research", location: "Galvez Hotel Conference Room", time: "8:00AM - 8:15AM", speaker: "Bo Jacobson, MD, PhD")
        
        let event46 = SchEvent(name: "Young Investigator Presentation", discription: "Placental infections and preterm birth", location: "Galvez Hotel Conference Room", time: "8:15AM - 8:30AM", speaker: "Bin Cao, PhD")
        
        let event47 = SchEvent(name: "Young Investigator Presentation", discription: "Preterm births and their outcomes in a tertiary hospital in Ghana", location: "Galvez Hotel Conference Room", time: "8:30AM - 8:45AM", speaker: "Kwame Adu-Bonsaffoh, MD")
        
        let event48 = SchEvent(name: "Young Investigator Presentation", discription: "Advances in Malaria therapeutics and its implications in pregnancy", location: "Galvez Hotel Conference Room", time: "8:45AM - 9:00AM", speaker: "Avish Arora, MD")
        
        let event49 = SchEvent(name: "Young Investigator Presentation", discription: "Genetic predisposition to spontaneous preterm birth: A study of potential susceptibility genes using whole exome sequencing", location: "Galvez Hotel Conference Room", time: "9:00AM - 9:15AM", speaker: "Johanna Huusko, PhD")
        
         let event50 = SchEvent(name: "Young Investigator Presentation", discription: "Fetal cell exosomes: Signalers of parturition?", location: "Galvez Hotel Conference Room", time: "9:15AM - 9:30AM", speaker: "Samantha Sheller, BS")
        
        let event51 = SchEvent(name: "Working Groups Review", discription: "Working groups review and discussion (continued from Day # 2)", location: "Galvez Hotel Conference Room", time: "9:30AM - 10:00AM", speaker: "N/a")
        
        let event52 = SchEvent(name: "Summary from Working Groups", discription: "Summary from working groups and action plans)", location: "Galvez Hotel Conference Room", time: "10:00AM - 10:15AM", speaker: "Sam Mesiano")
        
        let event53 = SchEvent(name: "Introduction of new Board of Directors", discription: "Introduction of new Board of Directors and Office bearers", location: "Galvez Hotel Conference Room", time: "10:15AM - 10:30AM", speaker: "Calvin J Hobel, MD")
        
         let event54 = SchEvent(name: "Future PREBIC meetings", discription: "Future PREBIC meetings", location: "Galvez Hotel Conference Room", time: "10:30AM - 10:45AM", speaker: "Nanbert Zhong, MD, Cynthia Bannerman, MD, MS")
        
        let event55 = SchEvent(name: "Q&A and Concluding Remarks", discription: "Q&A and Concluding Remarks", location: "Galvez Hotel Conference Room", time: "10:45AM - 11:00AM", speaker: "Hanns Helmer, MD")
        
        
        // Add events to the array
        events += [satHeader, satShutle1, satShutle2, event1, event2, event4, UpdatedEvent1, event5, event7, event8, event9, event10, event11, event12, event13, event14, event15, event16, event17, event18, event19, event20, updatedEvent2, updatedEvent3, sunHeader, sunShutle1,sunShutle2, event21, event22, event24, event25, event26, event27, event28, event29, event30, event31, event32, event33, event34, event35, event36, event37, event38, event39, event40, event41, event42, updatedEvent4, event43, WedHeader,event44, event45, event46,event47, event48, event49, event50, event51, event52, event53, event54, event55]
    }

}
