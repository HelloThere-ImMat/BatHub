//
//  DataFetching.swift
//  Quote App
//
//  Created by Mathias DORR on 06/08/2021.
//

import Foundation

class DataFetching {
    
    static func fetchData()->[Quotes] {
        
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else {
            
            return [Quotes]()
            
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                
                let recipeData = try decoder.decode([Quotes].self, from: data)
                
                for r in recipeData {
                    r.id = UUID()
                }
                
               return recipeData

            }
            
            catch {
                print(error)
            }
        }

        catch {
            print(error)
        }

        return [Quotes]()
        
    }
    
}
