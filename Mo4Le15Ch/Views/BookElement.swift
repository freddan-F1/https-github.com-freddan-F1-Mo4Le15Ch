//
//  BookElement.swift
//  Mo4Le15Ch
//
//  Created by Fredrik Nilsson on 2022-10-29.
//

import SwiftUI

struct BookElement: View {
    
    var book:Book
    
    var body: some View {
        //The card view
        ZStack {
            Rectangle().foregroundColor(.white).cornerRadius(15)
                .shadow(color: Color(.sRGB, white: 0, opacity: 0.5), radius: 10, x: -10, y: 10)
            VStack(alignment: .leading) {
                Text(book.title).font(.title).fontWeight(.bold).padding(.bottom,5)
                Text(book.author).italic()
                Image(book.image!).resizable().scaledToFill()
            }.frame(width: 300, height: 300, alignment: .center)
        }.frame(width: 340, height: 600, alignment: .center)
        
    }
}

struct BookElement_Previews: PreviewProvider {
    static var previews: some View {
        let b = BookModel()
        BookElement(book: b.books[0])
    }
}
