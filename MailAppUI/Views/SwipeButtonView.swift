//
//  SwipeButtonView.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import SwiftUI

struct SwipeButtonView: View {
    
    @ObservedObject var manager: MailManager
    let mail: MailItem
    
    var body: some View {
        ZStack {
            HStack {
                Button(action: {
                    manager.markRead(mail: mail)
                }, label: {
                    // wave shave view
                    ReadButtonView(mail: mail)
                })
                Spacer()
            }
            HStack {
                Spacer()
                Button(action: {
                    withAnimation(.linear) {
                        manager.deleteMail(mail: mail)
                    }
                }, label: {
                    // wave shave view
                    DeleteButtonView(mail: mail)
                })
            }
        }
    }
}
