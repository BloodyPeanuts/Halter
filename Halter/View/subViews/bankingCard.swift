//
//  bankingCard.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/14/21.
//

import SwiftUI

struct bankingCard: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading){
                Image(systemName: "applelogo")
                    .resizable()
                    .foregroundColor(.gray)
                    .frame(width: 30, height: 30)
                    .padding(.bottom, 40.0)
                Spacer()
                Spacer()
                Text("6280 2313 1038 1000")
                    .font(.title)
                Spacer()
                HStack{
                    Text("Sharyar Aran | 22/01")
                    Spacer()
                    Image(systemName: "house")
                }
            }
            .padding()
            //.offset(x: -50, y: -30)
        }
        .frame(width: 350, height: 215, alignment: .center)
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .shadow(radius: 2)
        .padding()
    }
}

struct bankingCard_Previews: PreviewProvider {
    static var previews: some View {
        bankingCard()
    }
}
