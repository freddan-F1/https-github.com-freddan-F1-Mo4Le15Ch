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
                HStack {
                    Text(book.title).font(.title).fontWeight(.bold).padding(.bottom,5).frame(width: 250,alignment: .leading)
                    if book.isFavourite {
                        Image(systemName: "star.fill").foregroundColor(.yellow).font(.title).padding(.bottom,10)
                    }
                }
                Text(book.author).italic()
                Image("cover\(book.id)").resizable().scaledToFill()
            }.frame(width: 300, height: 300, alignment: .center)
        }.frame(width: 340, height: 600, alignment: .center)
            .foregroundColor(.black)
        
    }
}

struct BookElement_Previews: PreviewProvider {
    static var previews: some View {
        let b = BookModel()
        BookElement(book: b.books[0])
    }
}
