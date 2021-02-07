//
//  HPResponse.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import Foundation

public class HPResponse {
    fileprivate var _urlResponse: HTTPURLResponse!
    fileprivate var _statusCode: Int!
    fileprivate var _raw: Data!
    fileprivate var _error: Error!
    fileprivate var _rawError: Error!
    fileprivate var _jsonError: Error!

    public var url: URL?
    public var statusCode: Int? { return _statusCode }
    public var data: Data? { return _raw }
    public var jsonError: Error? { return _jsonError }
    public var error: Error? { return _error }
    public var rawError: Error? { return _rawError }

    init() {}

    init(witURLResponse response: URLResponse?) {
        self._urlResponse = response as? HTTPURLResponse
    }

    func setURLResponse(_ response: URLResponse?) {
        self._urlResponse = response as? HTTPURLResponse
    }

    func setStatusCode(_ statusCode: Int) {
        self._statusCode = statusCode
    }

    func setData(_ data: Data?) {
        self._raw = data
    }

    func setJSONError(_ jsonError: Error?) {
        self._jsonError = jsonError
    }

    func setError(_ error: Error?) {
        self._error = error
    }

    func setRawError(_ error: Error?) {
        self._rawError = error
    }
}
