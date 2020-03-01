//
//  Seat.swift
//  MovieBooking
//
//  Created by Grant Rudow on 2/29/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation

struct Seat: Identifiable {
    var id: UUID
    var row: Int
    var number: Int
     
    static var `default`: Seat { Seat(id: UUID(), row: 0, number: 0)}
}
