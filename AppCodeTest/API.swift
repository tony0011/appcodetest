//  This file was automatically generated and should not be edited.

import Apollo

public final class UserProfileQuery: GraphQLQuery {
    public let operationDefinition =
    "query UserProfile {\n  me {\n    __typename\n    id\n    givenName\n    familyName\n  }\n}"
    
    public init() {
    }
    
    public struct Data: GraphQLSelectionSet {
        public static let possibleTypes = ["Query"]
        
        public static let selections: [GraphQLSelection] = [
            GraphQLField("me", type: .object(Me.selections)),
            ]
        
        public private(set) var resultMap: ResultMap
        
        public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
        }
        
        public init(me: Me? = nil) {
            self.init(unsafeResultMap: ["__typename": "Query", "me": me.flatMap { (value: Me) -> ResultMap in value.resultMap }])
        }
        
        /// The currently authenticated user.
        public var me: Me? {
            get {
                return (resultMap["me"] as? ResultMap).flatMap { Me(unsafeResultMap: $0) }
            }
            set {
                resultMap.updateValue(newValue?.resultMap, forKey: "me")
            }
        }
        
        public struct Me: GraphQLSelectionSet {
            public static let possibleTypes = ["User"]
            
            public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
                GraphQLField("givenName", type: .nonNull(.scalar(String.self))),
                GraphQLField("familyName", type: .nonNull(.scalar(String.self))),
                ]
            
            public private(set) var resultMap: ResultMap
            
            public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
            }
            
            public init(id: GraphQLID, givenName: String, familyName: String) {
                self.init(unsafeResultMap: ["__typename": "User", "id": id, "givenName": givenName, "familyName": familyName])
            }
            
            public var __typename: String {
                get {
                    return resultMap["__typename"]! as! String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                }
            }
            
            /// The Global Id of the User
            public var id: GraphQLID {
                get {
                    return resultMap["id"]! as! GraphQLID
                }
                set {
                    resultMap.updateValue(newValue, forKey: "id")
                }
            }
            
            public var givenName: String {
                get {
                    return resultMap["givenName"]! as! String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "givenName")
                }
            }
            
            public var familyName: String {
                get {
                    return resultMap["familyName"]! as! String
                }
                set {
                    resultMap.updateValue(newValue, forKey: "familyName")
                }
            }
        }
    }
}
