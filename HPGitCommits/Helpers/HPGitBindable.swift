//
//  HPGitBindable.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import UIKit

public protocol Bindable {
    associatedtype ViewModel
    
    var viewModel: ViewModel! { get set }
    func bindViewModel()
}

extension Bindable where Self: UIView {
    mutating public func setViewModel(to model: Self.ViewModel) {
        viewModel = model
        bindViewModel()
        if self.window != nil {
            layoutIfNeeded()
        }
    }
}
