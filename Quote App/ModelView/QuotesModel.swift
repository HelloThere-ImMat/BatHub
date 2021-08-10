//
//  QuotesModel.swift
//  Quote App
//
//  Created by Mathias DORR on 06/08/2021.
//

import Foundation

class QuotesModel: ObservableObject {
    
    @Published var quoteList = [Quotes]()
    
    init() {
        
        self.quoteList = DataFetching.fetchData()
        
    }
    
}
