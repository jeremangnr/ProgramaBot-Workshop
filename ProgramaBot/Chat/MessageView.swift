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
            // 1. If msg role is user, show spacer and text with green color
            
            // 2. If msg role is other, show text with gray color and then spacer
            
            Text("Message")
        }
        .padding(.horizontal)
    }
}
