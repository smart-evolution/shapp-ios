//
//  agentsUsecases.swift
//  smarthome
//
//  Created by Oskar on 27/01/2021.
//

struct AgentUsecases {
    let agentRepository: AgentRepository
    
    func getAllAgents(apiAddress: String, completion: @escaping (Array<AgentModel>) -> ()) {
        self.agentRepository.fetchAgents(apiAddress: apiAddress, completion: completion)
    }
}
