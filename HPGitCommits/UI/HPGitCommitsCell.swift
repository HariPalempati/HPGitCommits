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
    
    var viewModel: HPGitCommitsCellViewModel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUI() {
        authorLabel.text = viewModel.author ?? ""
        commitHashLabel.text = viewModel.hash ?? ""
        commitMessageLabel.text = viewModel.message ?? ""
    }
}

extension HPGitCommitsCell: Bindable {
    func bindViewModel() {
        setUI()
    }
}

/*
//TODO: Can use commonView instaed of using six labels but this is not working right now, as cell height is not getting updated based on the stackView.
extension HPGitCommitsCell {
    func configureCellUsingCommonView(with commitData: HPGitCommitsResponse) {
        let commitHashContentView = HPGitCommitCellContentView()
        let commitHashContentViewModel = HPGitCommitCellContentViewModel(title: "Commit Hash:", description: commitData.commitHash)
        commitHashContentView.viewModel = commitHashContentViewModel
        contentContainerView.addArrangedSubview(commitHashContentView)
        
        let authorContentView = HPGitCommitCellContentView()
        let authorContentViewModel = HPGitCommitCellContentViewModel(title: "Author:", description: commitData.commit.author.name)
        authorContentView.viewModel = authorContentViewModel
        contentContainerView.addArrangedSubview(authorContentView)
        
        let commitMessageContentView = HPGitCommitCellContentView()
        let commitMessageContentViewModel = HPGitCommitCellContentViewModel(title: "Commit message:", description: commitData.commit.message)
        commitMessageContentView.viewModel = commitMessageContentViewModel
        contentContainerView.addArrangedSubview(commitMessageContentView)
    }
}
*/
