//
//  BasketView.swift
//  MovieBooking
//
//  Created by Grant Rudow on 2/29/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import SwiftUI

struct BasketView<T: Movie>: View {
    var ticket: Ticket<T>
    var selectedSeats: [Seat]
    @State private var showPaymentScreen = false
    
    
    var body: some View {
        
        return
            VStack(spacing: 0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(selectedSeats) { seat in
                            GeometryReader { gr in
                                self.renderTicket(Ticket(id: self.ticket.id, movie:  self.ticket.movie, date:  self.ticket.date, hour:  self.ticket.hour), seat: seat , angle: gr.frame(in: .global).minX / -10)
                            }.frame(width: UIScreen.main.bounds.width)
                        }
                    }
                }
                LCButton(text: "Buy", action: {self.showPaymentScreen.toggle()})
                    .padding(.horizontal)
                    .padding(.bottom)
                    .sheet(isPresented: self.$showPaymentScreen, content: {
                        PaymentView()
                    })
        }
    }
    
    func renderTicket(_ ticket: Ticket<T>, seat: Seat, angle: CGFloat) -> some View {
        
        return TicketView(ticket: ticket, seat: seat)
            .rotation3DEffect(Angle(degrees: Double(angle)) , axis: (x: 0, y: 10.0, z: 0))
    }
}

struct BasketView_Previews: PreviewProvider {
    static var previews: some View {
        BasketView(ticket: Ticket<Popular>.default, selectedSeats: [])
    }
}
