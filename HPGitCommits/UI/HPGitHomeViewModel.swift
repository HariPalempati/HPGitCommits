//
//  HPGitHomeViewModel.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

struct HPGitHomeViewModel {
    var ownerName: String?
    var repositoryName: String?
    
    public init(ownerName: String?, repositoryName: String?) {
        self.ownerName = ownerName
        self.repositoryName = repositoryName
    }
}

extension HPGitHomeViewModel {
    func isOwnerNameEmpty() -> Bool {
        if let ownerNameValue = ownerName, ownerNameValue.count > 1 {
            return false
        }
        return true
    }
    
    func isRepositoryNameEmpty() -> Bool {
        if let repositoryNameValue = repositoryName, repositoryNameValue.count > 1 {
            return false
        }
        return true
    }
    
    func isOwnerNameContainsSpaces() -> Bool {
        if let ownerNameValue = ownerName, ownerNameValue.contains(" ") {
            return true
        }
        return false
    }
    
    func isRepositoryNameContainsSpaces() -> Bool {
        if let repositoryNameValue = repositoryName, repositoryNameValue.contains(" ") {
            return true
        }
        return false
    }
}
