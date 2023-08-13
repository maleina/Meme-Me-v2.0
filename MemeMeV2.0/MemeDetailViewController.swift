//
//  MemeDetailViewController.swift
//  MemeMeV2.0
//
//  Created by Maleina Bidek on 8/12/23.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    // MARK: Properties
    var meme: Meme!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewDidLoad()
        imageView.image = meme.memedImage
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
