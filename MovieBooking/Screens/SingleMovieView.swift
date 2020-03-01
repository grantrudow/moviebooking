//
//  SingleMovieView.swift
//  MovieBooking
//
//  Created by Grant Rudow on 2/29/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI
import KingfisherSwiftUI

struct SingleMovieView: View {
    
    var movieId: Int = 1
    
    @ObservedObject var model = MovieListingViewModel()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                createPosterImage()
                MovieDetailView(movie: self.model.movie)
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
    
    fileprivate func createPosterImage() -> some View {
        return KFImage(source: .network(model.movie.posterUrl))
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    
}




struct SingleMovieView_Previews: PreviewProvider {
    static var previews: some View {
        SingleMovieView()
    }
}
