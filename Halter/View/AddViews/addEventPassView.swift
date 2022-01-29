//
//  addEventPassView.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/26/21.
//

import SwiftUI

struct addEventPassView: View {
    @State var name = "Hesamoddin"
    @State var passID = ""
    var body: some View {
        Form{
            TextField("Name", text: $name)
                .keyboardType(.asciiCapable)
            TextField("Pass ID", text: $passID)
                .keyboardType(.numberPad)
        }
        .toolbar{
            Text("Next")
                .foregroundColor(.blue)
        }
    }
}

struct addEventPassView_Previews: PreviewProvider {
    static var previews: some View {
        addEventPassView()
    }
}
