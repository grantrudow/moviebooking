//
//  TicketDate.swift
//  MovieBooking
//
//  Created by Grant Rudow on 2/29/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation

struct TicketDate: Equatable {
    var day: String
    var month: String
    var year: String
    
    static var `default`: TicketDate { TicketDate(day: "", month: "", year: "") }
}
