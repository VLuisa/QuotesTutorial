//
//  QuotesViewController.swift
//  Quotes
//
//  Created by Luisa Vasquez on 12/12/17.
//  Copyright © 2017 DALI. All rights reserved.
//

import Cocoa

let quotes = Quote.all



class QuotesViewController: NSViewController {
    
    // makes property accessible from the storyboard
    @IBOutlet var textLabel: NSTextField!
    
    var currentQuoteIndex: Int = 0 {
        // update the text label string with the new quote when the index changes
        didSet {
            updateQuote()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        currentQuoteIndex = 0
        // Do view setup here.
    }
    
    func updateQuote() {
        textLabel.stringValue = String(describing: quotes[currentQuoteIndex])
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
        currentQuoteIndex = (currentQuoteIndex - 1 + quotes.count) % quotes.count
    }
    
    @IBAction func next(_ sender: NSButton) {
        currentQuoteIndex = (currentQuoteIndex + 1) % quotes.count
    }
    
    @IBAction func quit(_ sender: NSButton) {
        NSApplication.shared.terminate(sender)
    }
}
