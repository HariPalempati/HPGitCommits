//
//  HPGitHelpers.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

enum HPGitHelper {
    static func decodeJson<T: Decodable>(data: Data) -> T? {
        var responseResult: T?
        do {
            responseResult = try JSONDecoder().decode(T.self, from: data)
        } catch let jsonError {
            print(jsonError)
        }
        return responseResult
    }
}
