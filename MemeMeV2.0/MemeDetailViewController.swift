//
//  MemeDetailViewController.swift
//  MemeMeV2.0
//
//  Created by Maleina Bidek on 8/12/23.
//

import UIKit

class MemeDetailViewController: UIViewController {
    
    //MARK: Variables & Constants
    var meme: Meme!
    
    // MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Life Cycle Meethods
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewDidLoad()
        // Set the image detail contents
        imageView.image = meme.memedImage
    }

}
