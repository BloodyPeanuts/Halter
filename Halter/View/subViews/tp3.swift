//
//  tp3.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 1/7/22.
//

import SwiftUI
import Shiny
struct tp3: View {
    var body: some View {
        VStack(alignment: .center){
            HStack{
                Text("CHRISTIES INC.")
                    .bold()
                    .font(.title)
                Spacer()
                Text("A001")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.indigo)
            }
            .padding()
            VStack(alignment: .leading) {
                Text("The Barney A. Ebsworthberg collection")
                    .bold()
                Text("An American Place")
                Text("")
                Text("JAN 7. 2022")
                Text("London Meuseum of Visiual Arts")
                Text("")
                HStack{
                    Image(systemName: "iphone.homebutton.slash")
                    Image(systemName: "livephoto.slash")
                    Image(systemName: "bookmark.slash")
                }
                .shiny(.iridescent)
            }
            Spacer()
            HStack{
                VStack(alignment: .leading){
                    Text("Atendee")
                    Text("Ariana Riggle")
                        .bold()
                        .font(.title2)
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("Identifier")
                    Text("395F-DFG5")
                        .bold()
                        .font(.title2)
                }
            }
            .shiny(.glossy(.white))
            .padding()
            
            
        }
        .frame(width: 350, height: 450, alignment: .center)
        .background(.teal)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct tp3_Previews: PreviewProvider {
    static var previews: some View {
        tp3()
    }
}
