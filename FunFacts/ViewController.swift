//
//  ViewController.swift
//  FunFacts
//
//  Created by Christian Bozhinov on 10/28/17.
//
// logic to control how the app works

import UIKit


class ViewController: UIViewController {
    //
    @IBOutlet weak var funFacLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvider() // instance of the model
    let colorProvider = BackgroundColorProvider()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Any code that we put here, is run automatcally when the view loads. 
        funFacLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFactandChangeColors() {
        funFacLabel.text = factProvider.randomFact()
        let randomColor = colorProvider.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
    }

}

