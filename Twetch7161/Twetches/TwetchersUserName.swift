//
//  TwetchersUserName.swift
//  Twetch
//
//  Created by Henry Hudson on 26/05/2020.
//  Copyright © 2020 Henry Hudson. All rights reserved.
//

import SwiftUI

struct TwetchersUserName: View {
    
    @State var twetchUserName: String
    @State var twetchUserNumber: String
    @State private var timePosted: String = ". 2h"
    
    
    var body: some View {
        HStack {
            Text(twetchUserName)
                .fontWeight(.heavy)
            
            Text(twetchUserNumber)
                .foregroundColor(.secondary)
            
            Text(timePosted)
                .foregroundColor(.secondary)
            
        }
    }
}

struct TwetchersUserName_Previews: PreviewProvider {
    static var previews: some View {
        TwetchersUserName(twetchUserName: "Henry Hudson", twetchUserNumber: "@userNumber")
    }
}
