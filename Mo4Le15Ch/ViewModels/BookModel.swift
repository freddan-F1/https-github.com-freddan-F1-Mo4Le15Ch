//
//  BookModel.swift
//  Mo4Le15Ch
//
//  Created by Fredrik Nilsson on 2022-10-29.
//

import Foundation


class BookModel:ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.GetLocalData()
        for index in 0..<books.count {
            books[index].image = "cover\(index + 1)"
        }
    }
    
}
