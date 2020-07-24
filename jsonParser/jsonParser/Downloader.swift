//
//  Downloader.swift
//  jsonParser
//
//  Created by Neestackich on 24.07.2020.
//  Copyright © 2020 Neestackich. All rights reserved.
//

import UIKit

class Downloader: NSObject {
    let jsonDecoder = JSONDecoder()
    
    func download() {
        if let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let parsedJSON = try self.jsonDecoder.decode(Entry.self, from: data)
                    } catch {
                        
                    }
                }
            }.resume()
        }
    }
}
