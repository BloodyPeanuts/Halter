//
//  tp1.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 1/7/22.
//

import SwiftUI

struct tp1: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Image("zara.logo")
                    .resizable()
                    .frame(width: 120, height: 40, alignment: .topTrailing)
            }
            .padding()
            Image("qrcode")
                .resizable()
                .padding(.horizontal)
            Spacer()
            HStack{
                VStack(alignment: .leading) {
                    Text("Member")
                    Text("Ariana Riggle")
                        .bold()
                        .font(.title2)
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Efective date")
                    Text("JAN 7. 2022")
                        .bold()
                        .font(.title2)
                }
            }
            .shiny(.glossy(.white))
            .padding([.top, .leading, .trailing])
            Spacer()
            //Text("this is a pass")
                //.shiny(.hyperGlossy(.black))
        }
        .frame(width: 350, height: 450, alignment: .center)
        .background(.cyan)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct tp1_Previews: PreviewProvider {
    static var previews: some View {
        tp1()
    }
}
