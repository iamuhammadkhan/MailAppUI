//
//  MailItemView.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import SwiftUI

struct MailItemView: View {
    
    let mail: MailItem
    
    var body: some View {
        ZStack {
            Color.lightPurple
                .cornerRadius(15)
            
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing: 4) {
                    Text(mail.senderName)
                        .font(.system(size: 14, weight: .semibold))
                    Text(mail.title)
                        .font(.system(size: 16, weight: .bold))
                    Text(mail.message)
                        .font(.system(size: 14, weight: .regular))
                        .lineLimit(2)
                }
                Spacer()
                Text(mail.sendTime)
                    .font(.system(size: 12, weight: .regular))
            }
            .padding()
            .foregroundColor(mail.isRead ? Color(white: 0.85) : .white)
        }
        .offset(x: mail.offsetX)
    }
}
