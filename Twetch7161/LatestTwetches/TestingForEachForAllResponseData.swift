//
//  TestingForEachForAllResponseData.swift
//  Twetch7161
//
//  Created by Henry Hudson on 04/09/2020.
//

import SwiftUI

struct TestingForEachForAllResponseData: View {
    
    @ObservedObject private var latest23: Latest23 = Latest23()
    @State private var itemNumber = 0
    
    var body: some View {
        ZStack{
            ScrollView {
                ForEach (0 ..< latest23.bContents.count, id: \.self ){ item in
                    VStack(spacing: 3) {
                        TwetchView(bContent: latest23.bContents[item.asInt]! ,
                                   userNumber: "@" + latest23.userIds[item.asInt]!,
                                   userName: latest23.userName[item.asInt]!,
                                   profileIcon: latest23.profileIcons[item.asInt] ?? "https://cimg.twetch.com/avatars/2020/07/20/e5a015d4722dee46528803a21a29bc3f5ecd6370571bce2d96c325d0129b716c.ee090eb6-5c39-4e39-8833-15653d1846a4",
                                   branchCount: latest23.branchCount[item.asInt]!,
                                   likeCount: latest23.likeCount[item.asInt]!)
                      
                      Divider()
                        .frame(height: 1.0)
                        .background(Color.white)
                        .glow(color: .orange, radius: 1)
                        .padding(.horizontal)
                                    
                    }
                }
            }
            
            NewTwetchButton()
            
            SlideMenu()
        }
    
    }
}
struct TestingForEachForAllResponseData_Previews: PreviewProvider {
    static var previews: some View {
        TestingForEachForAllResponseData()
    }
}
