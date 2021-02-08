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
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func initialize() {
        let nib = UINib(nibName: "HPGitCommitCellContentView", bundle: nil)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        view?.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view ?? UIView())

        DispatchQueue.main.async {
            self.titleLabel.text = self.viewModel.title ?? ""
            self.descriptionLabel.text = self.viewModel.description ?? ""
        }
    }
}
