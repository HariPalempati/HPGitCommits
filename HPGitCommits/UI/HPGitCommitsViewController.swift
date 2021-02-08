//
//  HPGitCommitsViewController.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import UIKit

class HPGitCommitsViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: HPGitCommitsViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Commits"
        tableView.register(UINib.init(nibName: "HPGitCommitsCell", bundle: nil), forCellReuseIdentifier: HPGitCommitsCell.reuseIdentifier)
    }
}

extension HPGitCommitsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.commitsData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let commitsDataValue = viewModel.commitsData {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: HPGitCommitsCell.reuseIdentifier, for: indexPath) as? HPGitCommitsCell, indexPath.row < commitsDataValue.count else {
                return UITableViewCell()
            }
            let commitData = commitsDataValue[indexPath.row]
            cell.configureCellWith(commitData: commitData)
            return cell
        }
        return UITableViewCell()
    }
}
