
//
//  AddViewController.swift
//  wordList
//
//  Created by 野崎絵未里 on 2019/04/11.
//  Copyright © 2019年 野崎絵未里. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet var englishTextField: UITextField!
    @IBOutlet var japaneseTectField: UITextField!
    
    @IBAction func saveWord() {
        let wordDictionary = ["english": englishTextField.text!, "japanese": japaneseTectField.text!]
        
        wordArray.append(wordDictionary)
        saveData.set(wordArray, forKey: "word")
        
        let alert = UIAlertController(title: "savefinish",
                                      message: "単語の登録完了",
                                      preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "ok",
                                      style: .default,
                                      handler: nil
        ))
        self.present(alert, animated: true, completion: nil)
        englishTextField.text = ""
        japaneseTectField.text = ""
    }
    
    var wordArray: [Dictionary<String, String>] = []
    
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if saveData.array(forKey: "word") != nil {
            wordArray = saveData.array(forKey: "word") as! [Dictionary<String, String>]
        }
    
        
//    @IBAction func saveWord() {
//        let wordDictionary = ["english": englishTextField.text!, "japanese": japaneseTectField.text!]
//
//        wordArray.append(wordDictionary)
//        saveData.set(wordArray, forKey: "word")
//
//        let alert = UIAlertController(title: "savefinish",
//                                      message: "単語の登録完了",
//                                      preferredStyle: .alert
//        )
//        alert.addAction(UIAlertAction(title: "ok",
//                                          style: .default,
//                                          handler: nil
//        ))
//        self.present(alert, animated: true, completion: nil)
//        englishTextField.text = ""
//        japaneseTectField.text = ""
//    }
}
}
