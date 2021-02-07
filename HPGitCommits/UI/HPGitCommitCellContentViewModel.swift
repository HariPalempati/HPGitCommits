//
//  HPGitCommitCellContentViewModel.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

struct HPGitCommitCellContentViewModel {
    var title: String?
    var description: String?
    
    init(title: String?, description: String?) {
        self.title = title
        self.description = description
    }
}
