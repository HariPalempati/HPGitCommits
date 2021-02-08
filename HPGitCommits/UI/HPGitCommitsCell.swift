//
//  HPGitCommitsCell.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import UIKit

class HPGitCommitsCell: UITableViewCell {
    static let reuseIdentifier: String = "HPGitCommitsCell"
    @IBOutlet weak var contentContainerView: UIStackView!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var commitHashLabel: UILabel!
    @IBOutlet weak var commitMessageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCellWith(commitData: HPGitCommitsResponse) {
        authorLabel.text = commitData.commit.author.name
        commitHashLabel.text = commitData.commitHash
        commitMessageLabel.text = commitData.commit.message
//        let commitHashContentView = HPGitCommitCellContentView()
//        let commitHashContentViewModel = HPGitCommitCellContentViewModel(title: "Commit Hash:", description: commitData.commitHash)
//        commitHashContentView.viewModel = commitHashContentViewModel
//        contentContainerView.addArrangedSubview(commitHashContentView)
//        
//        let authorContentView = HPGitCommitCellContentView()
//        let authorContentViewModel = HPGitCommitCellContentViewModel(title: "Author:", description: commitData.commit.author.name)
//        authorContentView.viewModel = authorContentViewModel
//        contentContainerView.addArrangedSubview(authorContentView)
//
//        let commitMessageContentView = HPGitCommitCellContentView()
//        let commitMessageContentViewModel = HPGitCommitCellContentViewModel(title: "Commit message:", description: commitData.commit.message)
//        commitMessageContentView.viewModel = commitMessageContentViewModel
//        contentContainerView.addArrangedSubview(commitMessageContentView)
    }
}
