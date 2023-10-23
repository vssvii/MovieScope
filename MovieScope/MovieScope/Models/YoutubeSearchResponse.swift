//
//  YoutubeSearchResponse.swift
//  MovieScope
//
//  Created by Developer on 23.10.2023.
//

import Foundation


struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
