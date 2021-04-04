//
//  UserByIdVM.swift
//  Twetch7161
//
//  Created by Henry Hudson on 06/02/2021.
//

import SwiftUI

class UserByIdVM: ObservableObject {
    @Published var id: String = ""
    @Published var name: String = ""
    @Published var profilePhoto: String = ""
    @Published var satoshisEarned: String = ""
    @Published var followers: String = ""
    @Published var following: String = ""
    @Published var profileURL: String = ""
    @Published var description: String = ""
    
    init() {
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: UserByIdQueryQuery() ) { result in
            switch result {
            case .success(let gQLResponse):
                self.id = gQLResponse.data?.userById?.id ?? "Fail"
                self.name = gQLResponse.data?.userById?.name ?? "Failed to get name"
                self.profilePhoto = gQLResponse.data?.userById?.icon ?? "Failed to get icon"
                self.satoshisEarned = gQLResponse.data?.userById?.earnedSatsCalc ?? "Failed to get sats earned"
                self.followers = gQLResponse.data?.userById?.followerCount ?? "Failed to get the number of followers"
                self.following = gQLResponse.data?.userById?.followingCount ?? "Failed to get the number of followed twetch accounts"
                self.profileURL = gQLResponse.data?.userById?.profileUrl ?? "Failed to get the profile url"
                self.description = gQLResponse.data?.userById?.description ?? "Failed to get the users description"
            case .failure(let error):
                print("Fail, error: \(error)")
            }

        }
    }
}
