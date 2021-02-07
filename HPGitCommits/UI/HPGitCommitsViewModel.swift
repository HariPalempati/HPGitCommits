//
//  HPGitCommitsViewModel.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

struct HPGitCommitsViewModel {
    var commitsData: [HPGitCommitsResponse]?
    
    public init(commitsData: [HPGitCommitsResponse]?) {
        self.commitsData = commitsData
    }
}
