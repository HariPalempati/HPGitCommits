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
            //            let hpResponse = HPResponse()
            //
            //            if let error = error {
            //                hpResponse.setRawError(error)
            //            } else {
            //                if let response = response, let data = data {
            //                    if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 {
            //                        hpResponse.setData(data)
            //                        hpResponse.setURLResponse(response)
            //                        completion(hpResponse)
            //                    }
            //                }
            //            }
            if let errorValue = error {
                completion(nil, nil)
                return
            } else {
                if let responseValue = response, let dataValue = data {
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
