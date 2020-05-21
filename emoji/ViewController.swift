//
//  ViewController.swift
//  emoji
//
//  Created by Devi Krishna Lanka on 5/15/20.
//  Copyright © 2020 udemy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolView: UITableView!
    
    var emojis = ["😂","🙏🏻","🥳","💩","😡","🥱"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        coolView.dataSource = self
        coolView.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis [indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
        DefinitionViewController
        defVC.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

