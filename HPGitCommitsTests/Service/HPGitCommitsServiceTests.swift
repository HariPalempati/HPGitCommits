//
//  HPGitCommitsServiceTests.swift
//  HPGitCommitsTests
//
//  Created by Hari Palempati on 2/7/21.
//

import XCTest
@testable import HPGitCommits

class HPGitCommitsServiceTests: XCTestCase {
    var sut: HPGitCommitsService!
    
    override func setUp() {
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testValidResponseJsonIsHandledSuccessfully() {
        sut = HPGitCommitsService.shared
        guard let responseJson = HPGitUtility.getJsonStringFromMock(fileName: "MockValidCommitsResponse"), let responseJsonData = responseJson.data(using: .utf8) else {
            return
        }
        
        sut.handleLatestCommitsResponse(response: responseJsonData) { (response, error) in
            XCTAssertEqual(response?.first?.commit.author.name, "PALEMPATI")
            XCTAssertEqual(response?.first?.commitHash, "569e6539e5e683130ae8c7170001d97946fe1831")
            XCTAssertEqual(response?.first?.commit.message, "finl commit")
        }
    }
    
    func testInValidResponseJsonIshandledSuccessfully() {
        sut = HPGitCommitsService.shared
        guard let responseJson = HPGitUtility.getJsonStringFromMock(fileName: "MockInValidCommitsResponse"), let responseJsonData = responseJson.data(using: .utf8) else {
            return
        }
        
        sut.handleLatestCommitsResponse(response: responseJsonData) { (response, error) in
            XCTAssertNil(response)
        }
    }
}
