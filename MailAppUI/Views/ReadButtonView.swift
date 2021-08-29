//
//  ReadButtonView.swift
//  MailAppUI
//
//  Created by Muhammad Khan on 8/29/21.
//

import SwiftUI

struct ReadButtonView: View {
    
    let mail: MailItem
    
    var body: some View {
        ZStack {
            WaveShape(waveWidth: mail.offsetX, isLeft: true)
                .fill(Color.appGreen)
                .frame(width: 60)
            Image(systemName: "checkmark")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
                .opacity(mail.offsetX > 50 ? 1.0 : 0.0)
        }
    }
}
