//
//  MailListView.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import SwiftUI

struct MailListView: View {
    
    @ObservedObject var manager: MailManager
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            ForEach(manager.mails) { mail in
                ZStack {
                    SwipeButtonView(manager: manager, mail: mail)
                    
                    MailItemView(mail: mail)
                        .gesture(
                            DragGesture(minimumDistance: 10)
                                .onChanged({ value in
                                    // handle swipe
                                    if value.translation.width > 0 {
                                        if !mail.isRead {
                                            manager.handleReadGesture(mail: mail, swipeWidth: value.translation.width)
                                        }
                                        //lets take it one step further by swipping left to delete the mail
                                    } else if value.translation.width < 0 {
                                        // handle delete gesture
                                        manager.handleDeleteGesture(mail: mail, swipeWidth: value.translation.width)
                                    }
                                })
                                .onEnded({ _ in
                                    manager.swipeEnded()
                                })
                        )
                        .onTapGesture {
                            manager.markRead(mail: mail)
                            manager.selectedMail = mail
                        }
                }
            }
            .padding(.horizontal, 8)
        }
    }
}
