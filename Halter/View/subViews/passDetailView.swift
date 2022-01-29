//  passDetailView.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 1/3/22.
//

import SwiftUI

struct passDetailView: View {
    @State private var toggle1 = true
    var body: some View {
        VStack{
            passView()
                .offset(y: -50)
            Spacer()
            Button("More information"){
                
            }
        }
    }
}

struct passDetailView_Previews: PreviewProvider {
    static var previews: some View {
        passDetailView()
    }
}
