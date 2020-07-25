//
//  Downloader.swift
//  jsonParser
//
//  Created by Neestackich on 24.07.2020.
//  Copyright © 2020 Neestackich. All rights reserved.
//

import UIKit

class Downloader: NSObject {
    func download() -> Entry {
        let jsonDecoder: JSONDecoder = JSONDecoder();
        var parsedJSON: Entry = Entry();
        
        if let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1") {
            print("Downloader1")
            
            URLSession.shared.dataTask(with: url) { receivedData, response, error in
                if let data = receivedData {
                    print("Downloader2")

                    do {
                        //возвращает экземляр Entry
                        parsedJSON = try jsonDecoder.decode(Entry.self, from: data);
                    } catch {
                        print(error);
                    }
                }
            }.resume();
        }
        
        return parsedJSON;
    }
}
