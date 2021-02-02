//
//  TestingApollo.swift
//  Twetch7161
//
//  Created by Henry Hudson on 17/08/2020.
//

import SwiftUI

struct TestingApollo: View {
    @ObservedObject private var twetches: TwetchQ = TwetchQ()
    var body: some View {
        VStack {
            Text(twetches.twetches.description)
            
            Text("\(twetches.totalLikes)")
           // Text(twetches.totalLikes.description)
        }
    }
}

class TwetchQ: ObservableObject {
    @Published var twetches: [String]
    @Published var totalLikes: Int
    
    
    init() {
        print("loading")
        self.twetches = [String]()
        self.totalLikes = 0
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: TotalLikesQuery() ) { result in
            switch result {
            case .success(let gQLResponse):
                self.totalLikes = gQLResponse.data!.allLikes!.totalCount
                    
            case .failure(let error):
                print("Fail, error: \(error)")
            }
        }
    }
}

struct TestingApollo_Previews: PreviewProvider {
    static var previews: some View {
        TestingApollo()
    }
}
