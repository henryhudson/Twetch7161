//
//  TwetchButtons.swift
//  Twetch
//
//  Created by Henry Hudson on 26/05/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct TwetchButtons: View {
    
    @State var liked = false
    @State var commented = false
    @State var branched = false
    
    @State var numberOfLikes = 0
    @State var numberOfBranches = 0
    @State var numberOfComments = 0
    
    var body: some View {
        
        HStack {
            Spacer()
            Button(action: {self.liked.toggle()}) {
                Image(systemName: self.liked ? "heart.fill" : "heart" )
                    .foregroundColor(Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
            }
            Text("\(numberOfLikes)")
                .foregroundColor(Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)))
            
            Spacer()
            
            Button(action: {self.commented.toggle()}) {
                Image(systemName: self.commented ? "text.bubble.fill" : "plus.bubble" )
                    .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
            }
            Text("\(numberOfComments)")
                .foregroundColor(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
            
            Spacer()
            
            Button(action: {self.branched.toggle()}) {
                Image(systemName: self.branched ? "leaf.arrow.circlepath" : "arrow.branch" )
                    .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
            }
            Text("\(numberOfBranches)")
                .foregroundColor(Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)))
            
            Spacer()

        }
    .padding(5)
    }
}

struct TwetchButtons_Previews: PreviewProvider {
    static var previews: some View {
        TwetchButtons()
    }
}
