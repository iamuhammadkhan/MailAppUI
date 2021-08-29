//
//  MailItem.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import SwiftUI

struct MailItem: Identifiable {
    let id = UUID()
    let senderName: String
    let sendTime: String
    let title: String
    let message: String
    var offsetX: CGFloat = 0.0
    var isRead = false
}
