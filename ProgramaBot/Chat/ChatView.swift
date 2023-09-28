//
//  ContentView.swift
//  ProgramaBot
//
//  Created by Nunez, Jeremias on 26/9/23.
//

import SwiftUI

struct ChatView: View {
    @StateObject private var viewModel = ChatViewModel()
    
    var body: some View {
        VStack {
            List(viewModel.messages) { message in
                MessageView(message: message)
            }
            
            HStack {
                TextField("Type a message...", text: $viewModel.userInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .showClearButton($viewModel.userInput)
                Button("Send") {
                    Task {
                        await viewModel.sendMessage()
                    }
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
