//
//  ContentView.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/27/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var manager = MailManager()
    
    var body: some View {
        ZStack {
            Color.darkPurple
                .ignoresSafeArea()
                
            MailListView(manager: manager)
                
            if manager.selectedMail != nil {
                MailDetailView(manager: manager)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
