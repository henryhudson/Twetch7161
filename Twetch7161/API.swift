// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class Last10bContentQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Last10bContent {
      allPosts(last: 10) {
        __typename
        edges {
          __typename
          node {
            __typename
            bContent
          }
        }
      }
    }
    """

  public let operationName: String = "Last10bContent"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allPosts", arguments: ["last": 10], type: .object(AllPost.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allPosts: AllPost? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "allPosts": allPosts.flatMap { (value: AllPost) -> ResultMap in value.resultMap }])
    }

    /// Reads and enables pagination through a set of `Post`.
    public var allPosts: AllPost? {
      get {
        return (resultMap["allPosts"] as? ResultMap).flatMap { AllPost(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "allPosts")
      }
    }

    public struct AllPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PostsConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "PostsConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges which contains the `Post` and cursor to aid in pagination.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PostsEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .object(Node.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node? = nil) {
          self.init(unsafeResultMap: ["__typename": "PostsEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The `Post` at the end of the edge.
        public var node: Node? {
          get {
            return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Post"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("bContent", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(bContent: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Post", "bContent": bContent])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var bContent: String? {
            get {
              return resultMap["bContent"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "bContent")
            }
          }
        }
      }
    }
  }
}

public final class Latest23Query: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Latest23 {
      allPosts(last: 23, condition: {}) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            bContent
            branchCount
            likeCount
            mapTwdata
            mapUrl
            mediaId
            userId
            youLiked
            youBranched
            mapComment
            type
            replyPostId
            userByUserId {
              __typename
              name
              icon
            }
          }
        }
      }
    }
    """

  public let operationName: String = "Latest23"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allPosts", arguments: ["last": 23, "condition": [:]], type: .object(AllPost.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allPosts: AllPost? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "allPosts": allPosts.flatMap { (value: AllPost) -> ResultMap in value.resultMap }])
    }

    /// Reads and enables pagination through a set of `Post`.
    public var allPosts: AllPost? {
      get {
        return (resultMap["allPosts"] as? ResultMap).flatMap { AllPost(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "allPosts")
      }
    }

    public struct AllPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PostsConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "PostsConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges which contains the `Post` and cursor to aid in pagination.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PostsEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .object(Node.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node? = nil) {
          self.init(unsafeResultMap: ["__typename": "PostsEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The `Post` at the end of the edge.
        public var node: Node? {
          get {
            return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Post"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(String.self))),
              GraphQLField("bContent", type: .scalar(String.self)),
              GraphQLField("branchCount", type: .scalar(String.self)),
              GraphQLField("likeCount", type: .scalar(String.self)),
              GraphQLField("mapTwdata", type: .scalar(String.self)),
              GraphQLField("mapUrl", type: .scalar(String.self)),
              GraphQLField("mediaId", type: .scalar(String.self)),
              GraphQLField("userId", type: .scalar(String.self)),
              GraphQLField("youLiked", type: .scalar(String.self)),
              GraphQLField("youBranched", type: .scalar(String.self)),
              GraphQLField("mapComment", type: .scalar(String.self)),
              GraphQLField("type", type: .nonNull(.scalar(String.self))),
              GraphQLField("replyPostId", type: .scalar(String.self)),
              GraphQLField("userByUserId", type: .object(UserByUserId.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: String, bContent: String? = nil, branchCount: String? = nil, likeCount: String? = nil, mapTwdata: String? = nil, mapUrl: String? = nil, mediaId: String? = nil, userId: String? = nil, youLiked: String? = nil, youBranched: String? = nil, mapComment: String? = nil, type: String, replyPostId: String? = nil, userByUserId: UserByUserId? = nil) {
            self.init(unsafeResultMap: ["__typename": "Post", "id": id, "bContent": bContent, "branchCount": branchCount, "likeCount": likeCount, "mapTwdata": mapTwdata, "mapUrl": mapUrl, "mediaId": mediaId, "userId": userId, "youLiked": youLiked, "youBranched": youBranched, "mapComment": mapComment, "type": type, "replyPostId": replyPostId, "userByUserId": userByUserId.flatMap { (value: UserByUserId) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return resultMap["id"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var bContent: String? {
            get {
              return resultMap["bContent"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "bContent")
            }
          }

          public var branchCount: String? {
            get {
              return resultMap["branchCount"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "branchCount")
            }
          }

          public var likeCount: String? {
            get {
              return resultMap["likeCount"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "likeCount")
            }
          }

          public var mapTwdata: String? {
            get {
              return resultMap["mapTwdata"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "mapTwdata")
            }
          }

          public var mapUrl: String? {
            get {
              return resultMap["mapUrl"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "mapUrl")
            }
          }

          public var mediaId: String? {
            get {
              return resultMap["mediaId"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "mediaId")
            }
          }

          public var userId: String? {
            get {
              return resultMap["userId"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "userId")
            }
          }

          public var youLiked: String? {
            get {
              return resultMap["youLiked"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "youLiked")
            }
          }

          public var youBranched: String? {
            get {
              return resultMap["youBranched"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "youBranched")
            }
          }

          public var mapComment: String? {
            get {
              return resultMap["mapComment"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "mapComment")
            }
          }

          public var type: String {
            get {
              return resultMap["type"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          public var replyPostId: String? {
            get {
              return resultMap["replyPostId"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "replyPostId")
            }
          }

          /// Reads a single `User` that is related to this `Post`.
          public var userByUserId: UserByUserId? {
            get {
              return (resultMap["userByUserId"] as? ResultMap).flatMap { UserByUserId(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "userByUserId")
            }
          }

          public struct UserByUserId: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["User"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("name", type: .scalar(String.self)),
                GraphQLField("icon", type: .scalar(String.self)),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(name: String? = nil, icon: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "User", "name": name, "icon": icon])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            public var icon: String? {
              get {
                return resultMap["icon"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "icon")
              }
            }
          }
        }
      }
    }
  }
}

public final class MeSlideScreenQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query MeSlideScreen {
      me {
        __typename
        icon
        id
        name
        followerCount
        followingCount
      }
    }
    """

  public let operationName: String = "MeSlideScreen"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("me", type: .object(Me.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(me: Me? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "me": me.flatMap { (value: Me) -> ResultMap in value.resultMap }])
    }

    public var me: Me? {
      get {
        return (resultMap["me"] as? ResultMap).flatMap { Me(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "me")
      }
    }

    public struct Me: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("icon", type: .scalar(String.self)),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("followerCount", type: .scalar(String.self)),
          GraphQLField("followingCount", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(icon: String? = nil, id: String, name: String? = nil, followerCount: String? = nil, followingCount: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "icon": icon, "id": id, "name": name, "followerCount": followerCount, "followingCount": followingCount])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var icon: String? {
        get {
          return resultMap["icon"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "icon")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var followerCount: String? {
        get {
          return resultMap["followerCount"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "followerCount")
        }
      }

      public var followingCount: String? {
        get {
          return resultMap["followingCount"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "followingCount")
        }
      }
    }
  }
}

public final class MyQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query MyQuery {
      allPosts(last: 100) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            bContent
            bContentType
          }
        }
      }
    }
    """

  public let operationName: String = "MyQuery"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allPosts", arguments: ["last": 100], type: .object(AllPost.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allPosts: AllPost? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "allPosts": allPosts.flatMap { (value: AllPost) -> ResultMap in value.resultMap }])
    }

    /// Reads and enables pagination through a set of `Post`.
    public var allPosts: AllPost? {
      get {
        return (resultMap["allPosts"] as? ResultMap).flatMap { AllPost(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "allPosts")
      }
    }

    public struct AllPost: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["PostsConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "PostsConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges which contains the `Post` and cursor to aid in pagination.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["PostsEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .object(Node.selections)),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node? = nil) {
          self.init(unsafeResultMap: ["__typename": "PostsEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The `Post` at the end of the edge.
        public var node: Node? {
          get {
            return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Post"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(String.self))),
              GraphQLField("bContent", type: .scalar(String.self)),
              GraphQLField("bContentType", type: .scalar(String.self)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: String, bContent: String? = nil, bContentType: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "Post", "id": id, "bContent": bContent, "bContentType": bContentType])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var id: String {
            get {
              return resultMap["id"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var bContent: String? {
            get {
              return resultMap["bContent"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "bContent")
            }
          }

          public var bContentType: String? {
            get {
              return resultMap["bContentType"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "bContentType")
            }
          }
        }
      }
    }
  }
}

public final class TheUserQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query TheUser {
      me {
        __typename
        id
      }
    }
    """

  public let operationName: String = "TheUser"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("me", type: .object(Me.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(me: Me? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "me": me.flatMap { (value: Me) -> ResultMap in value.resultMap }])
    }

    public var me: Me? {
      get {
        return (resultMap["me"] as? ResultMap).flatMap { Me(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "me")
      }
    }

    public struct Me: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }
    }
  }
}

public final class TotalLikesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query TotalLikes {
      allLikes(filter: {userId: {equalTo: "7161"}}) {
        __typename
        totalCount
      }
    }
    """

  public let operationName: String = "TotalLikes"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allLikes", arguments: ["filter": ["userId": ["equalTo": "7161"]]], type: .object(AllLike.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allLikes: AllLike? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "allLikes": allLikes.flatMap { (value: AllLike) -> ResultMap in value.resultMap }])
    }

    /// Reads and enables pagination through a set of `Like`.
    public var allLikes: AllLike? {
      get {
        return (resultMap["allLikes"] as? ResultMap).flatMap { AllLike(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "allLikes")
      }
    }

    public struct AllLike: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["LikesConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("totalCount", type: .nonNull(.scalar(Int.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(totalCount: Int) {
        self.init(unsafeResultMap: ["__typename": "LikesConnection", "totalCount": totalCount])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The count of *all* `Like` you could get from the connection.
      public var totalCount: Int {
        get {
          return resultMap["totalCount"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "totalCount")
        }
      }
    }
  }
}

public final class UserByIdQueryQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query UserByIdQuery {
      userById(id: "7161") {
        __typename
        id
        dailyRanking
        description
        earnedSatsCalc
        followerCount
        followingCount
        icon
        profileUrl
        name
      }
    }
    """

  public let operationName: String = "UserByIdQuery"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("userById", arguments: ["id": "7161"], type: .object(UserById.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(userById: UserById? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "userById": userById.flatMap { (value: UserById) -> ResultMap in value.resultMap }])
    }

    public var userById: UserById? {
      get {
        return (resultMap["userById"] as? ResultMap).flatMap { UserById(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "userById")
      }
    }

    public struct UserById: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(String.self))),
          GraphQLField("dailyRanking", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .scalar(String.self)),
          GraphQLField("earnedSatsCalc", type: .scalar(String.self)),
          GraphQLField("followerCount", type: .scalar(String.self)),
          GraphQLField("followingCount", type: .scalar(String.self)),
          GraphQLField("icon", type: .scalar(String.self)),
          GraphQLField("profileUrl", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: String, dailyRanking: String, description: String? = nil, earnedSatsCalc: String? = nil, followerCount: String? = nil, followingCount: String? = nil, icon: String? = nil, profileUrl: String? = nil, name: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "dailyRanking": dailyRanking, "description": description, "earnedSatsCalc": earnedSatsCalc, "followerCount": followerCount, "followingCount": followingCount, "icon": icon, "profileUrl": profileUrl, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: String {
        get {
          return resultMap["id"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var dailyRanking: String {
        get {
          return resultMap["dailyRanking"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "dailyRanking")
        }
      }

      public var description: String? {
        get {
          return resultMap["description"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var earnedSatsCalc: String? {
        get {
          return resultMap["earnedSatsCalc"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "earnedSatsCalc")
        }
      }

      public var followerCount: String? {
        get {
          return resultMap["followerCount"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "followerCount")
        }
      }

      public var followingCount: String? {
        get {
          return resultMap["followingCount"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "followingCount")
        }
      }

      public var icon: String? {
        get {
          return resultMap["icon"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "icon")
        }
      }

      public var profileUrl: String? {
        get {
          return resultMap["profileUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "profileUrl")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}
