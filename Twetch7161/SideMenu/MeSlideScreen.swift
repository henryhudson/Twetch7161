//
//  MeSlideScreen.swift
//  Twetch7161
//
//  Created by Henry Hudson on 07/09/2020.
//

import SwiftUI

class MeSlideScreen: ObservableObject {
    @Published var userData: [String?]
    @Published var myUserName: String
    
    init() {
        self.userData = [String?]()
        self.myUserName = "h"
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: MeSlideScreenQuery() ) { [self] result in
            switch result {
            case .success(let gQLResponse):               userData.append(gQLResponse.data?.me!.name)

            case .failure(let error):
                print("Fail, error: \(error)")
            }

        }
    }
    
//    func loadData() {
//        Network.shared.apollo.fetch(query: MeSlideScreenQuery() ) {
//            result in
//            switch result {
//            case .success(let response):
//
//            case .failure(let error):
//                print("Failed, error: \(error)")
//            }
//        }
//    }
}
