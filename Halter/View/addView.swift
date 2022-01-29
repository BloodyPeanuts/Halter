//
//  addView.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/23/21.
//

import SwiftUI

struct addView: View {
    var body: some View {
            List{
                Section(header: Text("passes & tickets")){
                    NavigationLink(destination: addEventPassView()){
                        HStack{
                            Image(systemName: "lanyardcard")
                                .foregroundColor(.red)
                            Text(" Event Pass")
                            
                        }
                    }
                    NavigationLink(destination: addTicketView()){
                        HStack{
                            Image(systemName: "ticket")
                                .foregroundColor(.blue)
                            Text("ticket")
                            
                        }
                    }
                    NavigationLink(destination: Text("redeem")){
                        HStack{
                            Image(systemName: "faceid")
                                .foregroundColor(.green)
                            Text(" ID Pass")
                            
                        }
                    }
                }
                Section(header: Text("Banking")){
                    NavigationLink(destination: Text("redeem")){
                        HStack{
                            Image(systemName: "creditcard")
                                .foregroundColor(.orange)
                            Text("Debit Card")
                            
                        }
                    }
                    NavigationLink(destination: Text("redeem")){
                        HStack{
                            Image(systemName: "giftcard")
                                .foregroundColor(.mint)
                            Text("Gift Card")
                            
                        }
                    }
                }
                Section(header: Text("transportation")){
                    NavigationLink(destination: Text("redeem")){
                        HStack{
                            Image(systemName: "airplane.departure")
                                .foregroundColor(.indigo)
                            Text("Boarding Pass")
                            
                        }
                    }
                }
                Section(header: Text("Public transit")){
                    NavigationLink(destination: Text("redeem")){
                        HStack{
                            Image(systemName: "tram")
                                .foregroundColor(.purple)
                            Text("Boarding Pass")
                            
                        }
                    }
                }
            }
            .navigationTitle("Add Pass")
    }
}

struct addView_Previews: PreviewProvider {
    static var previews: some View {
        addView()
    }
}
