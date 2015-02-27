//
//  ViewController.swift
//  week3
//
//  Created by John Griffiths on 2015-02-26.
//  Copyright (c) 2015 John Griffiths. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var view = UIView(frame: CGRect(x: 20, y: 20, width: 20, height: 20))
        view.backgroundColor = UIColor.magentaColor()
        self.view.addSubview(view)

        // anything is of type anyobject, so to make sure things go as planned use "as xxx"
        var button = UIButton.buttonWithType(UIButtonType.Custom) as UIButton
        button.setTitle("Hit IT!!", forState: UIControlState.Normal)
        button.setTitle("Kaboom!!!", forState: UIControlState.Highlighted)
        button.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        self.view.addSubview(button)
      
                        // target = self (the button) 
                        // action = simply the function we want to run
                        // forcontrolevents = the event that has to occur for the function to be executed
        button.addTarget(self, action: "buttonTapped:", forControlEvents: UIControlEvents.TouchUpInside)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // ....
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // ....
    }

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        // ...
    }
    
    func buttonTapped(sender: UIButton?) {
        self.view.backgroundColor = UIColor.yellowColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

