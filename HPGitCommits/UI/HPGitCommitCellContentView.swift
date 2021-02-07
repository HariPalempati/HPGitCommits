//
//  HPGitCommitCellContentView.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import UIKit

public class HPGitCommitCellContentView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var viewModel: HPGitCommitCellContentViewModel!

    public override func awakeFromNib() {
        super.awakeFromNib()
    }
}
