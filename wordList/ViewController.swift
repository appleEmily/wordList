//
//  ViewController.swift
//  wordList
//
//  Created by 野崎絵未里 on 2019/04/11.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func back(segue: UIStoryboardSegue) {
        
    }
    @IBAction func start() {
        let saveData = UserDefaults.standard
        
        if let wordArray = saveData.array(forKey: "word") {
            if wordArray.count > 0 {
                self.performSegue(withIdentifier: "toQuestionView", sender: nil)
                
            }
        }
        
        let alert: UIAlertController = UIAlertController( title: "word",
                                                        message: "単語を登録してください" ,
                                                        preferredStyle: .alert
            )
        
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }


}

