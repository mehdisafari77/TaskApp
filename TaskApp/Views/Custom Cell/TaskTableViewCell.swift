//
//  TaskTableViewCell.swift
//  TaskApp
//
//  Created by Mehdi MMS on 28/02/2022.
//

import UIKit

protocol TaskCompletionDelegate: AnyObject {
    func taskCellButtonTapped(_ sender: TaskTableViewCell)
}

class TaskTableViewCell: UITableViewCell {

    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var completionButton: UIButton!
    
    var task: Task? {
        didSet {
            updateViews()
        }
    }
    weak var delegate: TaskCompletionDelegate?
    
    @IBAction func completionButtonTapped(_ sender: Any) {
        if let delegate = delegate {
            delegate.taskCellButtonTapped(self)
        }
    }
    
    func updateViews() {
        guard let task = task else { return }
        taskNameLabel.text = task.name
        if task.isComplete {
            completionButton.setBackgroundImage(UIImage(named: "complete"), for: .normal)
        } else {
            completionButton.setBackgroundImage(UIImage(named: "incomplete"), for: .normal)
        }
    }
}

