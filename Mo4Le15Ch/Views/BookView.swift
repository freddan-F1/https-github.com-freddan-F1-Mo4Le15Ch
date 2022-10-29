//
//  BookView.swift
//  Mo4Le15Ch
//
//  Created by Fredrik Nilsson on 2022-10-29.
//

import SwiftUI

struct BookView: View {
    
    var book:Book
    @State var buttonimage = "star"
    @State var rating = 1
    
    var body: some View {
        VStack {
            Text(book.title).font(.largeTitle).fontWeight(.heavy).padding(.bottom)
            VStack {
                Text("Read Now!").font(.title)
                Image(book.image!).resizable()
            }.scaledToFit().frame(width: 280, height: 400, alignment: .bottom)
            Text("Mark for later!")
                .font(.title2)
                .fontWeight(.bold).padding(.bottom)
            Button {
                if self.buttonimage == "star" {
                    self.buttonimage = "star.fill"
                }
                else {
                    self.buttonimage = "star"
                }
            } label: {
                Image(systemName: buttonimage).foregroundColor(.yellow)
            }.font(.title).padding(.bottom,10)
            Text("Rate Text and More").font(.title2)
                .fontWeight(.bold).padding(.bottom)
            Picker("", selection: $rating) {
                Text("1").tag(1)
                Text("2").tag(2)
                Text("3").tag(3)
                Text("4").tag(4)
                Text("5").tag(5)
                
            }.pickerStyle(SegmentedPickerStyle()).padding([.horizontal,.bottom]).frame(width:300)

        }
    }
}

struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        let a = BookModel()
        
        BookView(book: a.books[1])
    }
}
