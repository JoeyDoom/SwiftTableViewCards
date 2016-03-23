//
//  TableController.swift
//  CardTest
//
//  Created by Joey Gordon on 3/18/16.
//  Copyright © 2016 The Black Axe. All rights reserved.
//

import UIKit

let titles = ["Important Stuff", "Joey is the best", "Third One", "Booger Farm"]
let bodies = ["Vivamus in varius felis, eu consectetur mi. Sed elit ipsum, feugiat et lacinia sit amet, vehicula vitae mi. Morbi sit amet tellus luctus, blandit lacus quis, tincidunt justo. Quisque odio dolor, condimentum sit amet suscipit nec, rhoncus sed est. Morbi vel sapien vitae ex egestas pretium et id tellus. Sed viverra leo ut justo bibendum ultricies. Nulla ultricies porttitor est, nec fermentum orci consectetur et. Sed ac turpis at lacus aliquet congue. Nulla quis venenatis ante.",
    "butt dong",
    "I wanna know what love is. I want you to show me.",
    "This one is useless. I just wanted to do something. The twilight zone is very cool though."]

class TableController: UITableViewController {
    
    @IBOutlet weak var zaTableView: UITableView!
    
    let manager = CardDataSource()
    var cards = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.separatorColor = UIColor.clearColor()
        
        //set up a base height for the row
        self.tableView.estimatedRowHeight = 200
        //have the row resize to fit the content
        self.tableView.rowHeight = UITableViewAutomaticDimension

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
//        
//        self.zaTableView.delegate = self
//        self.zaTableView.dataSource = self
        self.cards = manager.getCards()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
//    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        //%%% this is asking for the number in the cardSizeArray.  If you're seriously
//        // thinking about making your cards dynamic, they should depend on something more reliable
//        // for example, facebook's post sizes depend on whether it's a status update or photo, etc
//        // so there should be a switch statement in here that returns different heights depending on
//        // what kind of post it is.  Also, don't forget to change the height of the
//        // cardView if you use dynamic cards
//        return CInt((Int(cardSizeArray[indexPath.row])))!
//    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return titles.count
        return cards.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // get the card data from the datasource thing
        let card = self.cards[indexPath.row] as? Card
        
        // if it's the first row, use the header cell
        if(indexPath.row == 0 ) {
            
            // choose which prototype to use
            let cell = tableView.dequeueReusableCellWithIdentifier("cellblock", forIndexPath: indexPath)  as! CardCell
            //make the labels say something
            cell.titleLabel.text = card?.title
            cell.bodyLabel.text = card?.content
            cell.bodyLabel.sizeToFit()
            return cell
            
        // if it's the last one, use the footer
        }else if(indexPath.row == cards.count - 1){
            let cell = tableView.dequeueReusableCellWithIdentifier("cellfoot", forIndexPath: indexPath)  as! CardCell
            //make the labels say something
            cell.titleLabel.text = card?.title
            cell.bodyLabel.text = card?.content
            cell.bodyLabel.sizeToFit()
            return cell
        // or else use the normal cell
        }else{
            
            // choose which prototype to use
            let cell = tableView.dequeueReusableCellWithIdentifier("cellhead", forIndexPath: indexPath)  as! CardCell
            //make the labels say something
            //cell.titleLabel.text = titles[indexPath.row]
            cell.bodyLabel.text = card?.content
            cell.bodyLabel.sizeToFit()
            return cell
        } //end if/else

    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
