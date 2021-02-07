//
//  HPGitCommitsResponse.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

public struct HPGitCommitsResponse: Codable {
    var authorName: String?
    var commitHash: String?
    var commitMessage: String?
    var error: String?
    
    init(authorName: String?, commitHash: String?, commitMessage: String?, error: String? = nil) {
        self.authorName = authorName
        self.commitHash = commitHash
        self.commitMessage = commitMessage
        self.error = error
    }
}
