//
//  ViewController.swift
//  jsonParser
//
//  Created by Neestackich on 11.07.2020.
//  Copyright © 2020 Neestackich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var completed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func updateClick(_ sender: Any) {
        var parsedJSON: Entry = Entry()
        let jsonDecoder: JSONDecoder = JSONDecoder()
        
        if let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") {
            URLSession.shared.dataTask(with: url) { receivedData, response, error in
                if let data = receivedData {
                    do {
                        parsedJSON = try jsonDecoder.decode(Entry.self, from: data)
                    } catch {
                        print(error)
                    }
                    
                    self.mainTitle.text = parsedJSON.title!
                    self.userId.text = String(parsedJSON.userId!)
                    self.id.text = String(parsedJSON.id!)
                    self.completed.text = String(parsedJSON.completed!)
                }
            }.resume()
        }
    }
    
    @IBAction func clearFields(_ sender: Any) {
        mainTitle.text = "Title"
        userId.text = "User ID"
        id.text = "ID"
        completed.text = "Status"
    }
}
