//
//  addTicketView.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/26/21.
//

import SwiftUI

struct addTicketView: View {
    @State private var name = "Hesamoddin"
    @State var ticketID = ""
    var body: some View {
        VStack{
            Form{
                TextField("Name", text: $name)
                TextField("Ticket ID", text: $ticketID)
            }
        }
        .toolbar{
            Text("Next")
                .foregroundColor(.blue)
        }
    }
}

struct addTicketView_Previews: PreviewProvider {
    static var previews: some View {
        addTicketView()
    }
}
