//
//  URLExt.swift
//  MovieBooking
//
//  Created by Grant Rudow on 3/1/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI
import Foundation

extension URL{
    
    static private let baseImageUrl = "https://image.tmdb.org/t/p/"
    static private let backdropSize = "w780"
    static private let posterSize = "w342"
    
    static private  let apiKey = "e0d3a99eb9eaebcb2b47d6aa73d1f700"
    static private  let baseUrl = "https://api.themoviedb.org/3/movie"
    
    
    static func movies(for section: HomeSection, page: Int) -> URL{
        URL(string: "\(baseUrl)/\(section.rawValue.replacingOccurrences(of: " ", with: "_").lowercased() )?api_key=\(apiKey)&language=en-US&page=\(page)")!
    }
    
    
    static var topRated: URL{
        get{
            
            URL(string: "\(baseUrl)/top_rated?api_key=\(apiKey)&language=en-US&page=1")!
        }
    }
    
    
    static var upcoming: URL{
         get{
              URL(string: "\(baseUrl)/upcoming?api_key=\(apiKey)&language=en-US&page=1")!
         }
     }
     
     static var popular: URL{
         get{
            return  URL(string: "\(baseUrl)/popular?api_key=\(apiKey)&language=en-US&page=1")!
         }
     }
     
     static var nowPlaying: URL{
         get{
             URL(string: "\(baseUrl)/now_playing?api_key=\(apiKey)&language=en-US&page=1")!
         }
     }
     
     static func movie(with id: Int) -> URL{
         return URL(string: "\(baseUrl)/\(id)?api_key=\(apiKey)&language=en-US&page=1")!
     }
    
}

