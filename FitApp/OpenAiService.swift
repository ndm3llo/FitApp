//
//  OpenAiService.swift
//  FitApp
//
//  Created by Nicolas D'Mello on 6/30/24.
//

import Foundation

enum HTTPMethod: String {
    case post = "POST"
    case get = "GET"
}
class OpenAiService {
    static let shared = OpenAiService()
    private init() { }
    private func generateUrlRequest(httpMethod: HTTPMethod, message: String) throws -> URLRequest {
        guard let url = URL(string: "https://api.openai.com/v1/chat/completions") else {
            throw URLError(.badURL)
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = httpMethod.rawValue
        urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let apiKey = "Bearer sk-proj-5QrOuXL9jZdShBFt8JqCT3BlbkFJtoXwzE6F18ZzXKSSsn3S"
        urlRequest.addValue(apiKey, forHTTPHeaderField: "Authorization")
        
        let systemMessage = GPTMessage(role: "system", content: "You are a macronutrient expert.")
        let userMessage = GPTMessage(role: "user", content: message)
        
        let food = GPTFunctionProperty(type: "string", description: "The food item e.g. hamburger")
        let calories = GPTFunctionProperty(type: "string", description: "The amount of calories of the given food item")
        let fats = GPTFunctionProperty(type: "integer", description: "The amount of fats in grams of the given food item")
        let carbs = GPTFunctionProperty(type: "integer", description: "The amount of carbohydrates in grams of the given food item")
        let protein = GPTFunctionProperty(type: "integer", description: "The amount of protein in grams of the given food item")
        
        let params: [String: GPTFunctionProperty] = [
            "food": food,
            "calories": calories,
            "fats": fats,
            "carbs": carbs,
            "protein": protein // Fixed typo here
        ]
        
        let functionParams = GPTFunctionParam(type: "object", properties: params, required: ["food", "calories", "fats", "carbs", "protein"])
        let function = GPTFunction(name: "get_macronutrients", description: "Get the macronutrients for a given food.", parameters: functionParams)
        let payload = GPTChatPayload(model: "gpt-3.5-turbo-0125", messages: [systemMessage, userMessage], functions: [function])
        
        let jsonData = try JSONEncoder().encode(payload)
        urlRequest.httpBody = jsonData
        
        return urlRequest // Ensure returning the configured URLRequest
    }

    
    func sendPromptToChatGPT(message: String) async throws {
        let urlRequest = try generateUrlRequest(httpMethod: .post, message: message)
        
        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        
        let result = try JSONDecoder().decode(GPTResponse.self, from: data)
        let args = result.choices[0].message.functionCall.arguments
        guard let argData = args.data(using: .utf8) else {
            throw URLError(.badURL)
        }
        let macro = try JSONDecoder().decode(MacroResponse.self, from: argData)
        print(macro)
    }
}
struct GPTResponse: Decodable {
    let choices: [GPTCompletion]
}
struct GPTCompletion: Decodable {
    let message: GPTResponseMessage    
}
struct GPTResponseMessage: Decodable {
    let functionCall: GPTFunctionCall
    
    enum CodingKeys: String, CodingKey {
        case functionCall = "function_call"
    }
}
struct GPTFunctionCall: Decodable {
    let name: String
    let arguments: String
}
struct MacroResponse: Decodable {
    let food: String
    let calories: String
    let carbs: Int
    let fats: Int
    let protein: Int
}

