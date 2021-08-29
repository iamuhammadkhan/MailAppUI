//
//  MailDetailView.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import SwiftUI

struct MailDetailView: View {
    
    @ObservedObject var manager: MailManager
    
    var body: some View {
        ZStack {
            Color.darkPurple
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text(manager.selectedMail?.senderName ?? "")
                            .font(.system(size: 14, weight: .semibold))
                        Text(manager.selectedMail?.title ?? "")
                            .font(.system(size: 16, weight: .bold))
                    }
                    Spacer()
                    Button(action: {
                        manager.selectedMail = nil
                    }, label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 32, weight: .light))
                            .padding()
                    })
                }
                Text(manager.selectedMail?.message ?? "")
                    .font(.system(size: 16, weight: .regular))
                
                Spacer()
            }
            .padding()
            .foregroundColor(.white)
        }
        .onAppear {
            manager.markRead(mail: manager.selectedMail!)
        }
    }
}
