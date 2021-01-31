//
//  agentRepository.swift
//  smarthome
//
//  Created by Oskar on 27/01/2021.
//

struct AgentRepository {
    let api: Api
    
    func fetchAgents(apiAddress: String, completion: @escaping (Array<AgentModel>) -> ()) {
        self.api.get(url: "\(apiAddress)/api/agents?period=30",
                     completion: completion)
    }
}
