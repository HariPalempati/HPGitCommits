//
//  HPGitCommitsViewModel.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

struct HPGitCommitsViewModel {
    var ownerName: String?
    var repositoryName: String?
    
    public init(ownerName: String?, repositoryName: String?) {
        self.ownerName = ownerName
        self.repositoryName = repositoryName
    }
}
