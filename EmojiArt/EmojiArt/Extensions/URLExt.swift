//
//  URLExt.swift
//  EmojiArt
//
//  Created by Aynur Nasybullin on 30.05.2023.
//

import SwiftUI


extension URL {
    var imageUrl: URL {
        for query in query?.components(separatedBy: "&") ?? [] {
            let queryComponents = query.components(separatedBy: "=")
            
            if queryComponents.count == 2 {
                if queryComponents[0] == "imgurl",
                   let url = URL(string: queryComponents[1].removingPercentEncoding ?? "") {
                    return url
                }
            }
        }
        
        return baseURL ?? self
    }
}
