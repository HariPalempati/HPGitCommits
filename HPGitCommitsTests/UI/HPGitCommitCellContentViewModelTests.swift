//
//  HPGitCommitCellContentViewModelTests.swift
//  HPGitCommitsTests
//
//  Created by Hari Palempati on 2/7/21.
//

import XCTest
@testable import HPGitCommits

class HPGitCommitCellContentViewModelTests: XCTestCase {
    var sut: HPGitCommitCellContentViewModel!
    
    let titleValue = "Author"
    let descriptionValue = "HariPalempati"
    
    override func setUp() {
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testViewModelCanCreateNewInstanse() {
        sut = HPGitCommitCellContentViewModel(title: titleValue, description: descriptionValue)
        XCTAssertNotNil(sut)
    }
    
    func testViewModelTitleShouldBeEqual() {
        sut = HPGitCommitCellContentViewModel(title: titleValue, description: descriptionValue)
        XCTAssertEqual(sut.title, titleValue)
    }

    func testViewModelDescriptionShouldBeEqual() {
        sut = HPGitCommitCellContentViewModel(title: titleValue, description: descriptionValue)
        XCTAssertEqual(sut.description, descriptionValue)
    }
}
