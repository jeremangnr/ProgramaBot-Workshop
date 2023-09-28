//
//  ChatAPIClient.swift
//  ProgramaBot
//
//  Created by Nunez, Jeremias on 27/9/23.
//

import Foundation

struct ChatAPIClient {
    let systemPrompt = "You are an expert iOS developer with over 15 years of experience, specializing in helping young programmers learn and understand Apple's ecosystem. Your vast knowledge includes SwiftUI, UIKit, Swift, Objective-C, and other iOS technologies. You love to share your expertise and guide newcomers through the fascinating world of iOS development."
    
    func fetchBotMessage(msgHistory: [Message]) async throws -> Message? {
        let urlString = "https://api.openai.com/v1/chat/completions"
        guard let url = URL(string: urlString) else {
            throw APIClientError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("Bearer YOUR_OPENAI_KEY", forHTTPHeaderField: "Authorization")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        var msgs = msgHistory
        msgs.insert(Message(role: .system, content: systemPrompt), at: 0)
        
        let chatRequest = ChatRequest(model: "gpt-3.5-turbo", messages: msgs)
        
        do {
            let encoder = JSONEncoder()
            request.httpBody = try encoder.encode(chatRequest)
            
            print("Sending request: \(chatRequest)")
            let (data, response) = try await URLSession.shared.data(for: request)
            print("Got response: \(response)")
            
            let decoder = JSONDecoder()
            let chatResponse = try decoder.decode(ChatResponse.self, from: data)
            
            if let choice = chatResponse.choices.first {
                return choice.message
            }
        } catch {
            throw APIClientError.failedToDecode
        }
        
        return nil
    }
    
    enum APIClientError: Error {
        case invalidURL
        case failedToDecode
    }
}

