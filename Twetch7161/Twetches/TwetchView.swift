//
//  TwetchView.swift
//  Twetch
//
//  Created by Henry Hudson on 26/05/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct TwetchView: View, Identifiable {
    var id = UUID()
    
    @State var bContent: String = "this is a twetch it will show this many lines does it need more space, what is going on why always me"
    @State var userNumber: String = "@user_number"
    @State var userName: String = "Henry Hudson"
    @State var profileIcon: String = "https://cimg.twetch.com/avatars/2020/08/12/226d0e97b182d2bdf82ad989335b1c5a94378953d1f0f6f0c91dae23c329e29c.ba0487ef-ebe3-4fbd-ab47-56865eebc8d0"
    
    @State var branchCount: String = "0"
    @State var likeCount: String = "0"
    @State var commentCount: String = "0"
    var body: some View {
        ZStack {
//            TwetchBoarderView(cornerRadius: Constants.screenSize.height/200)
            
            VStack(alignment: .leading) {
                HStack {
                    TwetchersProfileView(profileSize: 42, profileIcon: profileIcon)
                        .padding(2)
                    TwetchersUserName(twetchUserName: userName, twetchUserNumber: userNumber)
                        
                    //Spacer()
    
                }
                
                Text(bContent)
                    .padding(8)
                    
                Spacer()
                TwetchButtons(liked: false, commented: false, branched: false, numberOfLikes: 0, numberOfBranches: Int(branchCount)!, numberOfComments: 0)
            }
            .padding(.horizontal, 8)
            
            
        }
        //.frame(width: Constants.screenSize.width * 0.95, height: 130)
    }
}




struct TwetchView_Previews: PreviewProvider {
    static var previews: some View {
        
        
        TwetchView()
            .preferredColorScheme(.dark)
    }
}


