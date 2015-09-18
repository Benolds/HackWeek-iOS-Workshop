//
//  ViewController.swift
//  HackMIT
//
//  Created by Benjamin Reynolds on 9/17/15.
//  Copyright (c) 2015 HackMIT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var resolution : Int = 50
    
    @IBAction func buttonPressed(sender: AnyObject) {
        imageView.backgroundColor = UIColor.redColor()
        
        println(resolution)
        
        var urlString = "http://lorempixel.com/\(resolution)/\(resolution)/animals/"
        
        var request = NSURLRequest(URL: NSURL(string: urlString)!)
        
        var data = NSURLConnection.sendSynchronousRequest(request, returningResponse: nil, error: nil)
        
        var image = UIImage(data: data!)
        
        imageView.image = image
        
    }
    
    @IBAction func sliderChanged(sender: UISlider) {
        println(sender.value)
        resolution = Int(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

