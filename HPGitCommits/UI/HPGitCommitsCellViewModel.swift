//
//  HPGitCommitsCellViewModel.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

struct HPGitCommitsCellViewModel {
    var author: String?
    var hash: String?
    var message: String?
    var commitData: HPGitCommitsResponse

    init(commitData: HPGitCommitsResponse) {
        self.commitData = commitData
        
        self.author = commitData.commit.author.name
        self.hash = commitData.commitHash
        self.message = commitData.commit.message
    }
}
