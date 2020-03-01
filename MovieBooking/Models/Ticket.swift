//
//  Ticket.swift
//  MovieBooking
//
//  Created by Grant Rudow on 2/29/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation

struct Ticket: Identifiable {
    var id: UUID
    var movie: MovieViewModel
    var date: TicketDate
    var hour: String
    
    static var `default`: Ticket{
        .init(id: UUID(), movie: MovieViewModel.default, date: TicketDate.default, hour: "")
    }
}
