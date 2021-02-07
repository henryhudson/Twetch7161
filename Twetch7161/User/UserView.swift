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
        HStack {
            //RemoteImage(url: user.profilePhoto, loading: Image(systemName: "timelapse"), failure: Image(systemName: "flame.fill"))
            VStack {
                Text(user.name)
                Text(user.id)
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
