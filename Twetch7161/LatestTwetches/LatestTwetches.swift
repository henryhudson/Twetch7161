//
//  LatestTwetches.swift
//  Twetch7161
//
//  Created by Henry Hudson on 21/08/2020.
//

import SwiftUI

struct LatestTwetches: View {
    @ObservedObject private var latestTwetches: LatestTwetchesModel = LatestTwetchesModel()
    @ObservedObject private var bContent: LatestTwetchesModelbContent = LatestTwetchesModelbContent()
    
    var body: some View {
        //Text(latestTwetches)
        
        ScrollView{
            VStack {
                Text(latestTwetches.twetches.description)


                Text("Value")
                    .fontWeight(.black)
                    .padding()

                ZStack {
                    Text(latestTwetches.latestPosts.description)
                        .foregroundColor(.primary)
                    
                    List(latestTwetches.latestPosts, id: \.asString) { i in
                        Text(i.asString)
                    }
                }
                
                
                List(latestTwetches.twetches) { i in
                    Text(i)
                }
                
                
            }
        }
    }
}

//extension Optional: Identifiable {
//    public var id: String { self as! String }
//}

extension Optional {
    public var asString: String {
        if let value = self {
            return .init(describing: value)
        }
        return .init(describing: self)
    }
}


extension String: Identifiable {
    public var id: String { self }
}


class LatestTwetchesModel: ObservableObject {
    @Published var twetches: [String]
    @Published var latestPosts: [Any?]
    @Published var testing: [String]
    
    
    init() {
        self.twetches = [String]()
        self.latestPosts = [String?]()
        self.testing = [String]()
        loadData()
    }

    func loadData() {
        Network.shared.apollo.fetch(query: MyQueryQuery() ) { result in
            switch result {
            case .success(let gQLResponse):
                for twetch in gQLResponse.data!.allPosts!.edges.compactMap({ $0 }) {
                    self.latestPosts.append((twetch.node?.bContent))
                    self.twetches.append(twetch.node!.id)
                }
                
            case .failure(let error):
                print("Fail, error: \(error)")
            }
        }
    }
}

class LatestTwetchesModelbContent: ObservableObject {
    @Published var twetches: [String]
    @Published var bContent: [Any?]
    
    @Published var testing: [String]
    
    
    init() {
        print("loading")
        self.twetches = [String]()
        self.bContent = [Any?]()
        self.testing = [String]()
        loadData()
    }
    
    func loadData() {
        Network.shared.apollo.fetch(query: Last10bContentQuery() ) { result in
            switch result {
            case .success(let gQLResponse):
                for twetch in gQLResponse.data!.resultMap {
                    
                    self.bContent.append(twetch.value.unsafelyUnwrapped)
                    
                }
            
            case .failure(let error):
                print("Fail, error: \(error)")
            }
        }
    }
    
}


struct LatestTwetches_Previews: PreviewProvider {
    static var previews: some View {
        LatestTwetches()
    }
}
