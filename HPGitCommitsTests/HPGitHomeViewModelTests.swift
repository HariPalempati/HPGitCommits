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
    
    override func setUp() {
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testViewModelCanCreateNewInstanse() {
        sut = HPGitHomeViewModel()
        XCTAssertNotNil(sut)
    }
}
