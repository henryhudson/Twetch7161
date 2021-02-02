//
//  NewTwetchView.swift
//  Twetch
//
//  Created by Henry Hudson on 26/05/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct NewTwetchView: View {
   // @Binding var twetch: String = ""
    @State var twetch: String = ""
    @State var size: CGFloat
    
    @State var profileIcon: String = "https://cimg.twetch.com/avatars/2020/09/07/067cd4649f22524c4b3db3cb1801cc5ed52cd6a337de106d356474a1016f0063.9b974952-7796-409b-b42f-aacea71f5a1f"
    var body: some View {
        
        ZStack {
            TwetchBoarderView(cornerRadius: Constants.screenSize.height/55)
                    

            VStack {
                HStack {
                    TwetchersProfileView(profileSize: self.size, profileIcon: profileIcon)
                        .padding(8)
                    TextField("Whats the latest...", text: $twetch)
                }
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "slider.horizontal.3")
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "photo")
                    })
                    
                    Spacer()
                
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Twetch")
                    })
                    .buttonStyle(NewMenuButtonStyle(onColor: Color.green) )
                }
                .padding(.vertical, 10)
                .padding(.horizontal, 25)
                    
            
                
            }
            
        }
           // .frame(width: Constants.screenSize.width * 0.95,
             //      height: 100)
    }
}

struct NewTwetchView_Previews: PreviewProvider {
    static var previews: some View {
        NewTwetchView(size: 42)
    }
}
