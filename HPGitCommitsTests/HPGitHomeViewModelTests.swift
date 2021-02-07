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

    func testOwnerNameShouldNotbeEmpty() {
        sut = HPGitHomeViewModel(ownerName: "", repositoryName: repositoryNameValue)
        if let ownerTxtValue = sut.ownerName {
            XCTAssertTrue(ownerTxtValue.count > 1)
        }
    }
    
    func testRepositoryNameShouldNotbeEmpty() {
        sut = HPGitHomeViewModel(ownerName: ownerNameValue, repositoryName: "")
        if let repositoryTxtValue = sut.repositoryName {
            XCTAssertTrue(repositoryTxtValue.count > 1)
        }
    }
    
    func testOwnerNameShouldNotHaveSpaces() {
        sut = HPGitHomeViewModel(ownerName: "Hari Palempati", repositoryName: repositoryNameValue)
        if let ownerTxtValue = sut.ownerName  {
            XCTAssertTrue(!ownerTxtValue.contains(" "))
        }
    }
    
    func testRepositoryNameShouldNotHaveSpaces() {
        sut = HPGitHomeViewModel(ownerName: ownerNameValue, repositoryName: "Music Store")
        if let repositoryTxtValue = sut.repositoryName {
            XCTAssertTrue(!repositoryTxtValue.contains(" "))
        }
    }
}
