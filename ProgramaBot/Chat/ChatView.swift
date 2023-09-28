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
            // 1. Show message list
            
            HStack {
                // 2. Show text field for input
                
                // 3. Show "Send" button, call viewModel.sendMessage on tap
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
