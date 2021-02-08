//
//  HPGitCommitsService.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

public typealias serviceCompletion = ([HPGitCommitsResponse]?, Error?) -> Void

public class HPGitCommitsService {
    static let shared = HPGitCommitsService()
    
    func getLastestCommits(requestURL: URL, completion: @escaping serviceCompletion) {
        let session = URLSession(configuration: URLSessionConfiguration.ephemeral)
        let dataTask = session.dataTask(with: requestURL) { (data, response, error) in
            if let errorValue = error {
                completion(nil, errorValue)
                return
            } else {
                if let dataValue = data {
                    self.handleLatestCommitsResponse(response: dataValue, completion: completion)
                }
            }
        }
        dataTask.resume()
    }
    
    func handleLatestCommitsResponse(response: Data?, completion: @escaping serviceCompletion) {
        guard let json = response else {
            completion(nil, nil)
            return
        }

        guard let commitsResponse: [HPGitCommitsResponse] = HPGitHelper.decodeJson(data: json) else {
            completion(nil, nil)
            return
        }

        completion(commitsResponse, nil)
    }
}
