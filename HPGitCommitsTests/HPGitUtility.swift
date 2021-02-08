//
//  HPGitUtility.swift
//  HPGitCommitsTests
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

class HPGitUtility {
    static func getJsonStringFromMock(fileName: String) -> String? {
        if let filePath = Bundle(for: HPGitUtility.self).path(forResource: fileName, ofType: "json") {
            do {
                let contents = try String(contentsOfFile: filePath)
                print(contents)
                return contents
            } catch {
                print("Error while parsing the file")
            }
        }
        return nil
    }
}
