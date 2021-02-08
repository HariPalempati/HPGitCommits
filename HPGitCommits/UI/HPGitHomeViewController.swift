//
//  HPGitHomeViewController.swift
//  HPGitCommits
//
//  Created by Hari Palempati on 2/7/21.
//

import UIKit

class HPGitHomeViewController: UIViewController {
    @IBOutlet weak var ownerNameTxtField: UITextField!
    @IBOutlet weak var repositoryNameTxtField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func navigateToCommitsViewController(_ sender: Any) {
        self.view.endEditing(true)
        let ownerNameValue = ownerNameTxtField.text
        let repositoryNameValue = repositoryNameTxtField.text

        let viewModel = HPGitHomeViewModel(ownerName: ownerNameValue, repositoryName: repositoryNameValue)
        if viewModel.isValidOwnerName(), viewModel.isValidRepositoryName() {
            viewModel.makeGitCommitsService { (response, error) in
                if let responseValue = response {
                    DispatchQueue.main.async {
                        let commitsViewController = HPGitCommitsViewController()
                        let commitsViewModel = HPGitCommitsViewModel(commitsData: responseValue)
                        commitsViewController.viewModel = commitsViewModel
                        self.navigationController?.pushViewController(commitsViewController, animated: true)
                    }
                }
            }
        }
    }
}

