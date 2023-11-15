//
//  ViewController.swift
//  TD3
//
//  Created by esirem on 15/11/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myCats.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let catCell = tableView.dequeueReusableCell(withIdentifier: catCellIdentifier, for: <#T##IndexPath#>) as! Cat
    }
    
    var myCats = [Cat]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for _ in 1...50 {
            var number = Int.random(in: 1...10)
            var desc = "Chat n°" + String(number)
            var cat = Cat(img: number, desc: desc)
            myCats.append(cat)
        }
    }


}

