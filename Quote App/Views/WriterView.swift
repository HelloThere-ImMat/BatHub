//
//  WriterView.swift
//  Quote App
//
//  Created by Mathias DORR on 06/08/2021.
//

import SwiftUI

struct WriterView: View {
    
    var writer:Quotes
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
                
                ForEach (0..<writer.quotes.count, id : \.self) {index in
                    
                    Text("· " + writer.quotes[index])
                        .padding(.all, 1.5)
                    
                }
                
            }
            .padding(.all)
            
            
        }.navigationTitle(writer.writer)
    }
}

struct WriterView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = QuotesModel()
        
        WriterView(writer: model.quoteList[0])
    }
}
