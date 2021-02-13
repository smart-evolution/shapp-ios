//
//  agentModel.swift
//  smarthome
//
//  Created by Oskar on 27/01/2021.
//

struct AgentModel: Codable {
    var id: String
    var name: String
    var type: String
}

struct AgentsEmbedded: Codable {
    var agents: Array<AgentModel>
}
struct AgentsResponse: Codable {
    var _embedded: AgentsEmbedded
}
