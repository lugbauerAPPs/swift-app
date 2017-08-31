//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Moritz Lugbauer on 30.08.17.
//  Copyright © 2017 Lugbauer Apps. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        //go back
        navigationController!.popViewController(animated: true)
    }
    
    var previousVC = TasksViewController()
  
    @IBOutlet weak var taskLabel: UILabel!
    
    var task : Task? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if task!.important {
            taskLabel.text = "🚩\(task!.name!)"
        } else {
            taskLabel.text = task!.name
        }
        // Do any additional setup after loading the view.
    }

    
    

    

}
