//
//  HPGitCommitsViewControllerTests.swift
//  HPGitCommitsTests
//
//  Created by Hari Palempati on 2/7/21.
//

import XCTest
@testable import HPGitCommits

class HPGitCommitsViewControllerTests: XCTestCase {
    var sut: HPGitCommitsViewController!
    var viewModel: HPGitCommitsViewModel!
    
    override func setUp() {
        let responseData = HPGitCommitsResponse(commitHash: "569e6539e5e683130ae8c7170001d97946fe1831", commit: Commit(author: Author(name: "Palempati"), message: "Initial commit"))
        let responseDataArray = [responseData]
        viewModel = HPGitCommitsViewModel(commitsData: responseDataArray)
        sut = HPGitCommitsViewController()
        sut.viewModel = viewModel
    }
    
    override func tearDown() {
        sut = nil
        viewModel = nil
    }
    
    func testNavigationTitleShouldNotBeEqualToCommits() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.navigationItem.title, "Commits")
    }
    
    func testTableViewShouldNotBeNil() {
        sut.loadViewIfNeeded()
        XCTAssertNotNil(sut.tableView)
    }
    
    func testNumberOfRowsInTableView() {
        sut.loadViewIfNeeded()
        XCTAssertEqual(sut.tableView.numberOfRows(inSection: 0), 1)
    }
}
