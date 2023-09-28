//
//  ChatViewModel.swift
//  ProgramaBot
//
//  Created by Nunez, Jeremias on 27/9/23.
//

import Foundation

@MainActor class ChatViewModel: ObservableObject {
    @Published var messages: [Message] = []
    @Published var userInput: String = ""
    private var apiClient: ChatAPIClient
    
    init(apiClient: ChatAPIClient = ChatAPIClient()) {
        self.apiClient = apiClient
    }
    
    func sendMessage() async {
        // 1. Create user message
        
        // 2. Call API Client
        
        // 3. Show message
    }
}

