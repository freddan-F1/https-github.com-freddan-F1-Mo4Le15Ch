//
//  BookListView.swift
//  Mo4Le15Ch
//
//  Created by Fredrik Nilsson on 2022-10-29.
//

import SwiftUI

struct BookListView: View {
    
    @ObservedObject var book = BookModel()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            //MARK: Headline
            Text("My Library").font(.largeTitle).padding(.leading).fontWeight(.heavy)
            
            //MARK: List
            ScrollView {
                LazyVStack {
                    ForEach(book.books) { b in
                        BookElement(book: b).padding(.bottom)
                    }
                }
            }
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}
