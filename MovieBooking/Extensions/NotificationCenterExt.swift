//
//  NotificationCenterExt.swift
//  MovieBooking
//
//  Created by Grant Rudow on 3/1/20.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation
import UIKit

extension NotificationCenter {
    
    private static let keyboardWillShow = NotificationCenter.Publisher(center: .default, name: UIResponder.keyboardWillShowNotification)
    private static let keyboardWillHide = NotificationCenter.Publisher(center: .default, name: UIResponder.keyboardWillHideNotification)
    
    static var keyboardEvent = NotificationCenter.keyboardWillShow.merge(with: NotificationCenter.keyboardWillHide.map { Notification(name: $0.name, object: $0.object, userInfo: nil)})

        .map { ($0.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect ?? .zero)}
}
