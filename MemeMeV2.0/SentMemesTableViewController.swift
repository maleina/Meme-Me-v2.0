//
//  SentMemesTableViewController.swift
//  MemeMeV2.0
//
//  Created by Maleina Bidek on 8/12/23.
//

import Foundation
import UIKit

class SentMemesTableViewController: UITableViewController {
    
    // MARK: Properties
    // This code was copied from lesson 4
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }

    
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

        // Configure the cell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = meme.topText! + "..." + meme.bottomText!
        cell.imageView?.image = meme.memedImage

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailViewController = self.storyboard!.instantiateViewController(identifier: "MemeDetailViewController") as! MemeDetailViewController
        detailViewController.meme = self.memes[(indexPath as NSIndexPath).row]
        navigationController!.pushViewController(detailViewController, animated: true)    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
