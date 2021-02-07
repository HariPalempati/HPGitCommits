//
//  HPGitCommitsService.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

public class HPGitCommitsService {
    static let shared = HPGitCommitsService()
    
    func getLastestCommits(requestURL: URL, completion: @escaping (HPResponse?) -> Void) {
        let session = URLSession(configuration: URLSessionConfiguration.ephemeral)
        let dataTask = session.dataTask(with: requestURL) { (data, response, error) in
            if let errorValue = error {
                
            } else {
                if let responseValue = response, let dataValue = data {
                    
                }
            }
        }
    }
}
