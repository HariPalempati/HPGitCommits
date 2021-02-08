//
//  HPGitCommitsResponse.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

public struct HPGitCommitsResponse: Decodable, Equatable {
    var commitHash: String
    var commit: Commit
    
    enum CodingKeys: String, CodingKey {
        case commitHash = "sha"
        case commit
    }
}

struct Commit: Decodable, Equatable {
    let author: Author
    let message: String
}

struct Author: Decodable, Equatable {
    let name: String
}
