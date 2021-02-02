//
//  Network.swift
//  Twetch7161
//
//  Created by Henry Hudson on 17/08/2020.
//
import CoreData
import Apollo

class Network {
    static let shared = Network()
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://api.twetch.app/graphql")!)
}
