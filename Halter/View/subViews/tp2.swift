//
//  tp2.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 1/7/22.
//

import SwiftUI

struct tp2: View {
    var body: some View {
        VStack(alignment: .center){
            Image("aa.logo")
                .resizable()
                .frame(height: 100)
                .padding(.horizontal)
            Spacer()
            HStack{
                Image(systemName: "esim")
                Text("AA ADVANTAGE PLATINIUM")
                    .bold()
            }
            .font(.title3)
            .shiny(.matte(.black))
            .padding()
            HStack{
                VStack(alignment: .leading){
                    Text("PASSANGER NAME")
                        .font(.caption)
                    Text("ARIANA RIGGLE")
                        .bold()
                        .font(.title3)
                }
                Spacer()
                VStack(alignment: .leading){
                    Text("AA ID")
                        .font(.caption)
                    Text("36J-54VC")
                        .bold()
                        .font(.title3)
                }
            }
            .shiny()
            .padding()
            Image("qrcode")
                .resizable()
                .frame(width: 160, height: 160)
            Text("CAUTION")
                .bold()
                .font(.caption2)
            Text("Only the owner of this pass is permitted for the use of the pass.")
                .font(.caption2)
                .padding(.bottom)
        }
        .frame(width: 350, height: 450, alignment: .center)
        .background(.ultraThickMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct tp2_Previews: PreviewProvider {
    static var previews: some View {
        tp2()
    }
}
