//
//  agentRepository.swift
//  smarthome
//
//  Created by Oskar on 27/01/2021.
//

struct AgentRepository {
    let api: Api
    
    func fetchAgents(completion: @escaping (Array<String>) -> ()) {
        self.api.get(url: CServices.service + "/api/agents?period=30",
                      completion: completion)
    }
}
