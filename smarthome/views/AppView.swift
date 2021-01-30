//
//  AppView.swift
//  smarthome
//
//  Created by Oskar on 15/01/2021.
//

import SwiftUI

struct AppView: View {
    var agentUsecases: AgentUsecases
    @Binding var agents: Array<AgentModel>
    
    var body: some View {
        TabView {
            VStack(alignment: .leading) {
                List(agents, id:\.self.id) { agent in
                    Text(agent.name)
                }
            }
        }.onAppear {
            self.fetchAgents()
        }
    }
    
    func fetchAgents () {
        self.agentUsecases.getAllAgents(completion: { agents in
            self.agents = agents
        })
    }
}

struct AppView_Previews: PreviewProvider {
    @State(initialValue: []) static var agents: Array<AgentModel>
    
    static var previews: some View {
        AppView(agentUsecases: AgentUsecases(agentRepository: AgentRepository(api: Api())), agents: $agents)
    }
}
