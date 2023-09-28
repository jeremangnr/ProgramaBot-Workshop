//
//  ChatResponse.swift
//  ProgramaBot
//
//  Created by Nunez, Jeremias on 26/9/23.
//

import Foundation

struct ChatResponse: Codable {
    let id, object: String
    let created: Int
    let model: String
    let choices: [Choice]
    let usage: Usage
}

// MARK: - Choice
struct Choice: Codable {
    let index: Int
    let message: Message
    let finishReason: String

    enum CodingKeys: String, CodingKey {
        case index, message
        case finishReason = "finish_reason"
    }
}

// MARK: - Usage
struct Usage: Codable {
    let promptTokens, completionTokens, totalTokens: Int

    enum CodingKeys: String, CodingKey {
        case promptTokens = "prompt_tokens"
        case completionTokens = "completion_tokens"
        case totalTokens = "total_tokens"
    }
}
