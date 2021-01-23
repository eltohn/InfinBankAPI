//
//  Data.swift
//  InfinBankAPI
//
//  Created by Elbek Shaykulov on 1/23/21.
//

import Foundation

struct Result: Codable {
    var data: [Currency]
}

    struct Currency: Codable {
        
        var buyCourse: Int
        var sellCourse: Int
        var cbCourse: Int
        var currency: String
        var currencyCode: String
        var scale: Int
    }
 
