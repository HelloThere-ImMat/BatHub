//
//  ContentView.swift
//  Quote App
//
//  Created by Mathias DORR on 06/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var quotes = QuotesModel()
    
    
    
    var body: some View {
     
        NavigationView {
            ScrollView {
                
                VStack(spacing: 30.0) {
                    
                    ForEach(quotes.quoteList) { q in
                        
                        let a = Int.random(in: 0..<q.quotes.count)
                        
                        NavigationLink(
                            destination: WriterView(writer: q),
                            label: {
                                ZStack {
                                    
                                    Image(q.image)
                                        .resizable()
                                        .frame(width: 340, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .cornerRadius(15)
                                        
                                    VStack {
                                        
                                        Spacer()
                                        
                                        Spacer()
                                       
                                        
                                        Text(q.writer)
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                            .shadow(radius: 60)
                                        
                                        Spacer()
                                        
                                        Text("'' " + q.quotes[a] + " ''")
                                            .foregroundColor(Color.white)
                                            .padding(.horizontal, 30.0)
                                        
                                        
                                        Spacer()
                                    }
                                        
                
                                }
                            })
                        
                       
                        
                    }
                    
                }
                .padding(.top)
                
            }.navigationTitle("Citations de la journée")
    
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
