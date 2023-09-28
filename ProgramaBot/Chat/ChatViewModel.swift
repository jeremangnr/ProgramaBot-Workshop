//
//  ChatViewModel.swift
//  ProgramaBot
//
//  Created by Nunez, Jeremias on 27/9/23.
//

import Foundation

@MainActor class ChatViewModel: ObservableObject {
    // 1. Create var for list of messages
    
    // 2. Create var for userInput
    
    private var apiClient: ChatAPIClient
    
    init(apiClient: ChatAPIClient = ChatAPIClient()) {
        self.apiClient = apiClient
    }
    
    func sendMessage() async {
        // 3. Create user message
        
        // 4. Call API Client
        
        // 5. Show message
    }
}

