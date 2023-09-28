//
//  ChatRequest.swift
//  ProgramaBot
//
//  Created by Nunez, Jeremias on 26/9/23.
//

import Foundation

struct ChatRequest: Codable {
    
}

// MARK: - Message
struct Message: Codable, Identifiable {
    var id: Int {
        return 1
    }
}
