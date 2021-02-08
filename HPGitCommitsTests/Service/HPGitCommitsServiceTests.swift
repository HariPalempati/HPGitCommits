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
    
    func testValidResponseJsonIsParsing() {
        guard let responseJson = HPGitUtility.getJsonStringFromMock(fileName: "MockValidCommitsResponse"), let responseJsonData = responseJson.data(using: .utf8), let response: [HPGitCommitsResponse] = HPGitHelper.decodeJson(data: responseJsonData) else {
            return
        }
        XCTAssertEqual(response.first?.commit.author.name, "PALEMPATI")
        XCTAssertEqual(response.first?.commitHash, "569e6539e5e683130ae8c7170001d97946fe1831")
        XCTAssertEqual(response.first?.commit.message, "finl commit")
    }
}
