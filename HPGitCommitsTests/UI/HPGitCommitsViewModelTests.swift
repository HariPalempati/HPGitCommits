//
//  HPGitCommitsViewModelTests.swift
//  HPGitCommitsTests
//
//  Created by Hari Palempati on 2/7/21.
//

import XCTest
@testable import HPGitCommits

class HPGitCommitsViewModelTests: XCTestCase {
    var sut: HPGitCommitsViewModel!
    
    override func setUp() {
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testViewModelCanCreateNewInstanse() {
        sut = HPGitCommitsViewModel(commitsData: nil)
        XCTAssertNotNil(sut)
    }
}
