//
//  TheUser.swift
//  Twetch7161
//
//  Created by Henry Hudson on 10/09/2020.
//

import SwiftUI

class TheUser: ObservableObject {
    @Published var myUserName: String
    
    init() {
        
        self.myUserName = "h"
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: TheUserQuery() ) { result in
            switch result {
            case .success(let gQLResponse):
                self.myUserName = gQLResponse.data?.me?.id ?? "Fail"

            case .failure(let error):
                print("Fail, error: \(error)")
            }

        }
    }
}
