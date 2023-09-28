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
        // 1. Create URLRequest
        
        // 2. Set headers / encode httpBody
        
        // 3. Send request
        
        // 4. Decode response
        
        // 5. Return message
        
        return nil
    }
    
    enum APIClientError: Error {
        case invalidURL
        case failedToDecode
    }
}

