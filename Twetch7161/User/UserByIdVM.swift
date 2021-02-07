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

            case .failure(let error):
                print("Fail, error: \(error)")
            }

        }
    }
}
