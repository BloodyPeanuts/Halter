//
//  ContentView.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/14/21.
//

import SwiftUI
import SlideOverCard

struct ContentView: View {
    @State private var detailViewIsShowing = false
    let columns = [
        GridItem(.fixed(1))
        ]
    
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                Spacer()
                keyView()
                    .shadow(radius: 7)
                Spacer()
                
                VStack(spacing: -400){
                    passView()
                    tp1()
                    tp2()
                    tp3()
                    VStack(spacing: -440){
                        passView()
                        tp1()
                        tp2()
                    }
                }
        }
            .navigationTitle("Passport")
            .toolbar{
                HStack(alignment: .center, spacing: 270) {
                    NavigationLink(destination: settingsView()){
                        Image(systemName: "gear")
                            .font(.title3)
                    }
                    NavigationLink(destination: addView()){
                        Image(systemName: "plus.circle")
                            .font(.title3)
                    }
                }
                .padding(.horizontal)
        }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
