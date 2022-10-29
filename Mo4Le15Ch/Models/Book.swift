//
//  Book.swift
//  Mo4Le15Ch
//
//  Created by Fredrik Nilsson on 2022-10-29.
//

import Foundation


struct Book: Identifiable, Decodable {
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id: Int
    var content:[String]
    
}
