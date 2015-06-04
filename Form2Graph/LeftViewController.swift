//
//  LeftViewController.swift
//  Form2Graph
//
//  Created by Mikael Nyborg on 2015-06-04.
//  Copyright (c) 2015 Mikael Nyborg. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet var formula: UITextField!
    
    @IBAction func run(sender: UIButton) {
        var result = simplify(formula.text)
    }
    
    func simplify(form: String) -> String? {
        var brain = GraphCalculatorBrain()
        var simplifiedFormula = brain.simplify(form)
        
        if (simplifiedFormula != nil) {
            println("\(simplifiedFormula)")
            simplifiedFormula = simplify(form);
        }
        println("END");
        
        return simplifiedFormula
    }
    
}
