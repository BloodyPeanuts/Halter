//
//  passView.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/15/21.
//

import SwiftUI
import Shiny

struct passView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top){
                Image("nike.logo")
                    .resizable()
                    .frame(width: 120, height: 40, alignment: .topTrailing)
                Text("Membership Card")
                    .bold()
                    .font(.title2)
            }
            .padding()
            Text("Member ID")
                .padding(.leading)
            Image("barcode")
                .resizable()
                .frame(maxHeight: 45)
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
            .shiny(.matte(.black))
            .padding([.top, .leading, .trailing])
            Spacer()
            //Text("this is a pass")
                //.shiny(.hyperGlossy(.black))
        }
        .frame(width: 350, height: 450, alignment: .center)
        .background(.orange)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

struct passView_Previews: PreviewProvider {
    static var previews: some View {
        passView()
    }
}
