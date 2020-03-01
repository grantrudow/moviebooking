//
//  AnyTransitionExt.swift
//  MovieBooking
//
//  Created by Grant Rudow on 3/1/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation
import SwiftUI

extension AnyTransition {
    
    static var heartbeat: AnyTransition {
        
        return AnyTransition.scale(scale: 1.7).combined(with: .scale(scale: 1))
    }
}
