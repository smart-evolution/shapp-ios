//
//  agentList.swift
//  smarthome
//
//  Created by Oskar on 28/01/2021.
//

import SwiftUI

struct AgentList: View {
    var agents: Array<String>
    
    var body: some View {
        TabView {
            VStack(alignment: .leading) {
                List(agents, id:\.self) { agent in
                    Text(agent)
                }
            }
        }
    }
}
