//
//  agentsUsecases.swift
//  smarthome
//
//  Created by Oskar on 27/01/2021.
//

struct AgentUsecases {
    let agentRepository: AgentRepository
    
    func getAllAgents(completion: @escaping (Array<String>) -> ()) {
        self.agentRepository.fetchAgents(completion: completion)
    }
}
