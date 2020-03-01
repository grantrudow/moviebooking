//
//  Ticket.swift
//  MovieBooking
//
//  Created by Grant Rudow on 2/29/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation

struct Ticket<T: Movie>: Identifiable {
    var id: UUID
    var movie: T
    var date: TicketDate
    var hour: String
    
    static var `default`: Ticket<Popular>{
        .init(id: UUID(), movie: Popular.default, date: TicketDate.default, hour: "")
    }
}
