//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Ivan Christopher BANFOU on 18/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Text: UILabel!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ChangeImage(_ sender: UIButton, forEvent event: UIEvent) {
        image.image = UIImage(named: "1298882")
        if image.image == UIImage(named: "1298882"){
            Text.text = "Let me grow"
        }
        else{
            image.image = UIImage(named: "1115615")
            Text.text = "We will be there"
        }
    }
    
}

