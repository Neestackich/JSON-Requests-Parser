//
//  ViewController.swift
//  jsonParser
//
//  Created by Neestackich on 11.07.2020.
//  Copyright © 2020 Neestackich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var jsonDownloader: Downloader?
    var parsedJson: Entry!
    
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var completed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Execute")
    }
    
    @IBAction func downloadClick(_ sender: Any) {
        print("Function")
               
        jsonDownloader = Downloader()

        parsedJson = jsonDownloader?.download()
                   
        print(parsedJson?.title!);
                   
        mainTitle.text = parsedJson?.title
    }
}

