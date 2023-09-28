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
        guard !userInput.isEmpty else { return }
        let userMessage = Message(role: .user, content: userInput)
        messages.append(userMessage)
        
        do {
            if let botMessage = try await apiClient.fetchBotMessage(msgHistory: messages) {
                messages.append(botMessage)
                userInput = ""
            }
        } catch {
            // Handle error gracefully, e.g. show an error message to the user
            print("Failed to send message: \(error.localizedDescription)")
        }
    }
}

