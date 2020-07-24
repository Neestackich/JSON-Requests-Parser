//
//  Entry.swift
//  jsonParser
//
//  Created by Neestackich on 24.07.2020.
//  Copyright © 2020 Neestackich. All rights reserved.
//

import UIKit

class Entry: Decodable {
    var userId: Int?
    var id: Int?
    var title: String?
    var completed: Bool?
}
