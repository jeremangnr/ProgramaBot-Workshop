//
//  ChatRequest.swift
//  ProgramaBot
//
//  Created by Nunez, Jeremias on 26/9/23.
//

import Foundation

struct ChatRequest: Codable {
    let model: String
    let messages: [Message]
}

// MARK: - Message
struct Message: Codable, Identifiable {
    let role: Role
    let content: String
    
    var id: Int {
        return content.hashValue
    }
}

enum Role: String, Codable {
    case system
    case user
    case assistant
}
