//
//  MailManager.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import SwiftUI

class MailManager: ObservableObject {
    
    @Published var mails = DataModel.mailList
    @Published var selectedMail: MailItem? = nil
    var changingMailIndex = -1
    var isChanging = false
    // when user tap on mail item then mail will be read
    
    func markRead(mail: MailItem) {
        if let index = mails.firstIndex(where: { $0.id == mail.id }) {
            withAnimation(.linear) {
                mails[index].isRead = true
                mails[index].offsetX = 0.0
            }
        }
    }
    
    // now lets do same operation in swipe right gesture like design
    func handleReadGesture(mail: MailItem, swipeWidth: CGFloat) {
        if swipeWidth != 0 {
            if let index = mails.firstIndex(where: { $0.id == mail.id }) {
                withAnimation(.linear) {
                    swipeStarted(index: index)
                    if swipeWidth <= 120 {
                        mails[index].offsetX = swipeWidth/2
                    }
                    if swipeWidth > 120 {
                        mails[index].offsetX = 60
                    }
                    if swipeWidth > 240 {
                        markRead(mail: mail)
                    }
                }
            }
        }
    }
    
    func handleDeleteGesture(mail: MailItem, swipeWidth: CGFloat) {
        if swipeWidth != 0 {
            if let index = mails.firstIndex(where: { $0.id == mail.id }) {
                withAnimation(.linear) {
                    swipeStarted(index: index)
                    if swipeWidth >= -120 {
                        mails[index].offsetX = swipeWidth/2
                    }
                    if swipeWidth < -120 {
                        mails[index].offsetX = -60
                    }
                    if swipeWidth < -240 {
                        //delete mail
                        deleteMailIndex(index: index)
                    }
                }
            }
        }
    }
    
    func deleteMailIndex(index: Int) {
        if index == changingMailIndex {
            changingMailIndex = -1
        }
        mails.remove(at: index)
    }
    
    func deleteMail(mail: MailItem) {
        if let index = mails.firstIndex(where: { $0.id == mail.id }) {
            if index == changingMailIndex {
                changingMailIndex = -1
            }
            mails.remove(at: index)
        }
    }
    
    func swipeStarted(index: Int) {
        if (changingMailIndex != -1 && !isChanging) {
            mails[changingMailIndex].offsetX = 0.0
            isChanging = true
        }
        changingMailIndex = index
    }
    
    func swipeEnded() {
        isChanging = false
        
        let readStart: CGFloat = 55.0
        let readEnd: CGFloat = 60.0
        let markReadRange = readStart...readEnd
        
        let deleteStart: CGFloat = -60.0
        let delteEnd: CGFloat = -55.0
        let markDeleteRange = deleteStart...delteEnd
        
        if (changingMailIndex != -1) {
            if !markReadRange.contains(mails[changingMailIndex].offsetX) && !markDeleteRange.contains(mails[changingMailIndex].offsetX) {
                withAnimation(.linear) {
                    mails[changingMailIndex].offsetX = 0.0
                }
            }
        }
    }
}
