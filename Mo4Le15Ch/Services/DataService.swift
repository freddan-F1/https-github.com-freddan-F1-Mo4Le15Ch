//
//  GetLocalData.swift
//  RecepieListApp
//
//  Created by Fredrik Nilsson on 2022-10-25.
//

import Foundation

class DataService {
    
    static func GetLocalData() -> [Book] {
        
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard pathString != nil else {
            return [Book]()
        }
        
        let url = URL(filePath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            do {
                let decoder = JSONDecoder()
                let bookData = try decoder.decode([Book].self, from: data)
                
                return bookData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        return [Book]()
    }
}


