//
//  SentMemesTableViewController.swift
//  MemeMeV2.0
//
//  Created by Maleina Bidek on 8/12/23.
//

import Foundation
import UIKit

class SentMemesTableViewController: UITableViewController {
    
    //MARK: Variables & Constants
    // Shared data model for the list of shared memes
    // This code is borrowed from Udacity's Build V2.0 of the MemeMe App lesson.
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }

    // MARK: Life cycle methods
    // Reload the memes to populate the table of sent memes
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // return the number of rows
        return memes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell", for: indexPath)

        // Configure the cell appearance
        let meme = self.memes[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = meme.topText! + "..." + meme.bottomText!
        cell.imageView?.image = meme.memedImage

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Instantiate and then push the detail controller
        let detailViewController = self.storyboard!.instantiateViewController(identifier: "MemeDetailViewController") as! MemeDetailViewController
        detailViewController.meme = self.memes[(indexPath as NSIndexPath).row]
        navigationController!.pushViewController(detailViewController, animated: true)
    }


}
