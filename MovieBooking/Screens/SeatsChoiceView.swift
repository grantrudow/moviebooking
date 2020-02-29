//
//  SeatsChoiceView.swift
//  MovieBooking
//
//  Created by Grant Rudow on 2/29/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct SeatsChoiceView<T: Movie>: View {
    
    var movie: T
    
    @State private var selectedSeats: [Seat] = []
    @State private var showBasket: Bool = false
    @State private var date: TicketDate = TicketDate.default
    @State private var hour: String = ""
    @State private var showPopup = false
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 0) {
                    TheaterView(selectedSeats: self.$selectedSeats)
                        .padding(.top, 20)
                    DateTimeView(date: self.$date, hour: self.$hour)
                    LCButton(text: "Continue", action: {})
                        .padding()
                }
            }
            .navigationBarTitle("Choose seats", displayMode: .large)
                .frame(maxHeight: .infinity)
                .accentColor(Color.accent)
        }
    }
}

struct SeatsChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        SeatsChoiceView(movie: Popular.default)
    }
}