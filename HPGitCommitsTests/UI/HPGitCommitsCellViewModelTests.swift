//
//  HPGitCommitsCellViewModelTests.swift
//  HPGitCommitsTests
//
//  Created by Hari Palempati on 2/7/21.
//

import XCTest
@testable import HPGitCommits

class HPGitCommitsCellViewModelTests: XCTestCase {
    var sut: HPGitCommitsCellViewModel!
    
    override func setUp() {
        let responseData = HPGitCommitsResponse(commitHash: "569e6539e5e683130ae8c7170001d97946fe1831", commit: Commit(author: Author(name: "Palempati"), message: "Initial commit"))
        sut = HPGitCommitsCellViewModel(commitData: responseData)
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testViewModelCanCreateNewInstanse() {
        XCTAssertNotNil(sut)
    }
    
    func testAuthorShouldBeEqualtoResponseAuthorValue() {
        XCTAssertEqual(sut.author, "Palempati")
    }
    
    func testHashShouldBeEqualtoResponseHashValue() {
        XCTAssertEqual(sut.hash, "569e6539e5e683130ae8c7170001d97946fe1831")
    }
    
    func testMessageShouldBeEqualtoResponseMessageValue() {
        XCTAssertEqual(sut.message, "Initial commit")
    }
}
