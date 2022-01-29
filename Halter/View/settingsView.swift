//
//  settingsView.swift
//  Halter
//
//  Created by Hesamoddin Aran  on 12/22/21.
//

import SwiftUI

struct settingsView: View {
    @State private var notifications = true
    @State private var usecalander = false
    @State private var selectedLanguage = "English"
    @State private var sharing = true
    @State private var report = true
    
    let languages = ["English", "Persian", "Turkish", "German", "French"]
    var body: some View {
        List{
            Section{
                NavigationLink(destination: profileView()){
                    HStack{
                        Image("person.profile")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.trailing)
                        VStack(alignment: .leading){
                            Text("Ariana Riggle")
                                .bold()
                            Text("+989124867843")
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            Section(header: Text("passes")){
                NavigationLink(destination: Text("redeem")){
                    HStack{
                        Image(systemName: "calendar.badge.exclamationmark")
                            .foregroundColor(.red)
                        Text("expired")
                        
                    }
                }
                NavigationLink(destination: Text("redeem")){
                    HStack{
                        Image(systemName: "wallet.pass")
                            .foregroundColor(.green)
                        Text("Transferd")
                        
                    }
                }
                NavigationLink(destination: Text("redeem")){
                    HStack{
                        Image(systemName: "trash")
                            .foregroundColor(.blue)
                        Text("Deleted")
                        
                    }
                }
            }
            Section(header: Text("Utilities")){
                Picker("Language", selection: $selectedLanguage){
                    ForEach(languages, id: \.self){
                        Text("\($0)")
                    }
                }
            
                Toggle("Remind By Notifications", isOn: $notifications)
                Toggle("Add passes to calender", isOn: $usecalander)
                }
            Section(header: Text("Privacy & security")){
                Toggle("Share data with pass origin", isOn: $sharing)
                Toggle("Report usage", isOn: $report)
            }
            Section{
                Link("Privacy policy", destination: URL(string: "https://developer.apple.com")!)
            }
                
            }
        }
    }


struct settingsView_Previews: PreviewProvider {
    static var previews: some View {
        settingsView()
    }
}
