//
//  keyView.swift
//  Passport
//
//  Created by Hesamoddin Aran  on 1/9/22.
//

import SwiftUI
import Shiny

struct keyView: View {
    var body: some View {
        ZStack {
            ZStack{
                HStack{
                    Text("OPEN DOORS")
                        .bold()
                        .font(.title)
                    Image(systemName: "lock.rectangle.stack")
                        .font(.largeTitle)
                }
                .shiny(.matte(.black))
            }
            .frame(minWidth: 300, maxWidth: .infinity, minHeight: 100)
            .background(.ultraThinMaterial)
        }
        .frame(minWidth: 300, maxWidth: .infinity, minHeight: 100)
        .background(Image("gradientbg").resizable())
        .cornerRadius(12)
        .padding()
    }
}

struct keyView_Previews: PreviewProvider {
    static var previews: some View {
        keyView()
    }
}
