//
//  MessageView.swift
//  ProgramaBot
//
//  Created by Nunez, Jeremias on 27/9/23.
//

import SwiftUI

struct MessageView: View {
    let message: Message
    
    var body: some View {
        HStack {
            if message.role == .user {
                Spacer()
                Text(message.content)
                    .padding(10)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            } else {
                Text(message.content)
                    .padding(10)
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.black)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}
