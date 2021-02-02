//
//  Latest23.swift
//  Twetch7161
//
//  Created by Henry Hudson on 27/08/2020.
//

import SwiftUI

class Latest23: ObservableObject {
    @Published var userIds: [String?]
    @Published var userName: [String?]
    @Published var bContents: [String?]
    @Published var profileIcons: [String?]
    
    @Published var likeCount: [String?]
    @Published var branchCount: [String?]
    @Published var commentCount: [String?]
    
    init() {
        self.userIds = [String?]()
        self.userName = [String?]()
        self.profileIcons = [String?]()
        self.bContents = [String?]()
        self.likeCount = [String?]()
        self.branchCount = [String?]()
        self.commentCount = [String?]()
        loadData()
    }

    func loadData() {
        Network.shared.apollo.fetch(query: Latest23Query() ) { result in
            switch result {
            case .success(let gQLResponse):
                for twetch in gQLResponse.data!.allPosts!.edges.compactMap({ $0 }) {
                    self.userIds.append(twetch.node?.userId)
                    self.userName.append(twetch.node?.userByUserId?.name)
                    self.profileIcons.append(twetch.node?.userByUserId?.icon)
                    self.bContents.append(twetch.node?.bContent)
                    self.likeCount.append(twetch.node?.likeCount)
                    self.branchCount.append(twetch.node?.branchCount)
                    
                }
                
            case .failure(let error):
                print("Fail, error: \(error)")
            }
        }
    }
}
