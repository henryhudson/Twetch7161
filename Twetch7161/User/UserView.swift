//
//  UserView.swift
//  Twetch7161
//
//  Created by Henry Hudson on 06/02/2021.
//

import SwiftUI

struct UserView: View {
    @ObservedObject var user = UserByIdVM()
    
    
    var body: some View {
        VStack {
            RemoteImage(url: user.profilePhoto,
                        loading: Image(systemName: "timelapse"),
                        failure: Image(systemName: "flame.fill"))
                .frame(100)
                .clipCircle()
            
            Group {
                Text(user.name)
                    .font(.title)
                
                HStack(spacing: 0) {
                    Text("@")
                    Text(user.id)
                }
            }
            
            Text(user.description)
                .padding(.horizontal)
            
            Link(destination: URL(string: user.profileURL)!, label: {
                Text("Profile link")
            })
            
            HStack {
                Text(user.following)
                    .bold()
                Text("Following")
                
                Text(user.followers)
                    .bold()
                Text("Followers")
                
            }
            
            Spacer()
            
        }
        .padding(.horizontal)
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
