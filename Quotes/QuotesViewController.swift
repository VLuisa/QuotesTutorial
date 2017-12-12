//
//  QuotesViewController.swift
//  Quotes
//
//  Created by Luisa Vasquez on 12/12/17.
//  Copyright © 2017 DALI. All rights reserved.
//

import Cocoa



class QuotesViewController: NSViewController {
    
    // makes property accessible from the storyboard
    @IBOutlet var textLabel: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}

extension QuotesViewController {
    // MARK: Storyboard instantiation
    static func freshController() -> QuotesViewController {
        //1.
        let storyboard = NSStoryboard(name: NSStoryboard.Name(rawValue: "Main"), bundle: nil)
        //2.
        let identifier = NSStoryboard.SceneIdentifier(rawValue: "QuotesViewController")
        //3.
        guard let viewcontroller = storyboard.instantiateController(withIdentifier: identifier) as? QuotesViewController else {
            fatalError("Why cant i find QuotesViewController? - Check Main.storyboard")
        }
        return viewcontroller
    }

}

// MARK: Actions
extension QuotesViewController {
    @IBAction func previous(_ sender: NSButton) {
    }
    
    @IBAction func next(_ sender: NSButton) {
    }
    
    @IBAction func quit(_ sender: NSButton) {
    }
}
