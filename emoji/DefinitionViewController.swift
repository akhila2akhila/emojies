//
//  DefinitionViewController.swift
//  emoji
//
//  Created by Devi Krishna Lanka on 5/20/20.
//  Copyright © 2020 udemy. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "🙏🏻"{
        definitionLabel.text = "Namaste!"
    }
        
        if emoji == "😡"{
               definitionLabel.text = "I am mad at you!"
           }
        if emoji == "😂"{
               definitionLabel.text = "Tears of Joy"
           }
        if emoji == "💩"{
               definitionLabel.text = "Poop time"
           }
        if emoji == "🥱"{
               definitionLabel.text = "Sleepy"
           }
        if emoji == "🥳"{
               definitionLabel.text = "Celebration Time"
           }
        }
}

