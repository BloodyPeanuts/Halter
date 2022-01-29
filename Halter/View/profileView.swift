//
//  profileView.swift
//  Passport
//
//  Created by Hesamoddin Aran  on 1/7/22.
//

import SwiftUI

struct profileView: View {
    @State private var logoutActionSheet = false
    
    var actionSheet: ActionSheet{
        ActionSheet(
            title: Text("Logout"),
            message: Text("Are you sure you want to logout?"),
            buttons: [.cancel(), .destructive(Text("Logout"))])
    }
    
    
    var body: some View {
        Form{
            Section(header: Text("Personal info")){
                NavigationLink(destination: Text("1")){
                    HStack{
                        Image("person.profile")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.trailing)
                        Text("Profile Picture")
                    }
                }
                NavigationLink(destination: Text("1")){
                    VStack(alignment: .leading) {
                        Text("Phone Number")
                        Text("+989124824512")
                            .font(.caption)
                            .foregroundColor(.blue)
                    }
                }
                NavigationLink(destination: Text("1")){
                    VStack(alignment: .leading) {
                        Text("Email")
                        Text("arianariggle@hyperion_reaserch.com")
                            .font(.caption)
                    }
                }
                
        }
            Section{
                Button("Log Out"){
                    logoutActionSheet.toggle()
                }
                .foregroundColor(.red)
            }
        }
        
        
        .confirmationDialog("Are you sure you want to logout?", isPresented: $logoutActionSheet, titleVisibility: .visible) {
            Button("Log Out", role: .destructive){
                
            }
        }
}
}
struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
