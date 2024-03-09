//
//  ContentView.swift
//  HTML To String
//
//  Created by Daniel Coburn on 3/9/24.
//

import SwiftUI

struct ContentView: View {
    
    let formatter = HTMLFormatter()
    let sample = "<p>• Skills: leadership, organization, communication, teamwork, problem-solving, responsible, good morals, patience, compassion, ability to remain camper focused, creativity, a positive attitude, and maintain a safe camp environment</p><p>•Lifeguard certification (you have time to take a course before camp starts)</p><p>&nbsp;</p>"
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Unformatted")
                Text(sample)
            }
            .padding()
            
            VStack {
                Text("formatted")
                Text(formatter.formatString(sample))
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
