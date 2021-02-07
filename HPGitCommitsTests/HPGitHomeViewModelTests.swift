//
//  HPGitHomeViewModelTests.swift
//  HPGitCommitsTests
//
//  Created by Hari Palempati on 2/7/21.
//

import XCTest
@testable import HPGitCommits

class HPGitHomeViewModelTests: XCTestCase {
    var sut: HPGitHomeViewModel!
    
    let ownerNameValue = "HariPalempati"
    let repositoryNameValue = "MusicStore"
    
    override func setUp() {
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testViewModelCanCreateNewInstanse() {
        sut = HPGitHomeViewModel(ownerName: ownerNameValue, repositoryName: repositoryNameValue)
        XCTAssertNotNil(sut)
    }

    func testIsOwnerNameEmpty() {
        sut = HPGitHomeViewModel(ownerName: "", repositoryName: repositoryNameValue)
        XCTAssertTrue(HPGitHomeViewModel.isOwnerNameEmpty(sut)())
    }
    
    func testIsRepositoryNameEmpty() {
        sut = HPGitHomeViewModel(ownerName: ownerNameValue, repositoryName: "")
        XCTAssertTrue(HPGitHomeViewModel.isRepositoryNameEmpty(sut)())
    }

    func testIsOwnerNameContainsSpaces() {
        sut = HPGitHomeViewModel(ownerName: "Hari Palempati", repositoryName: repositoryNameValue)
        XCTAssertTrue(HPGitHomeViewModel.isOwnerNameContainsSpaces(sut)())
    }
    
    func testIsRepositoryNameContainsSpaces() {
        sut = HPGitHomeViewModel(ownerName: ownerNameValue, repositoryName: "Music Store")
        XCTAssertTrue(HPGitHomeViewModel.isRepositoryNameContainsSpaces(sut)())
    }
}
