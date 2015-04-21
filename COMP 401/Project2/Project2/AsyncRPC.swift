//
//  AsyncRPC.swift
//  Project2
//
//  Created by Oliver Spryn on 4/14/15.
//  Copyright (c) 2015 Oliver Spryn. All rights reserved.
//

import UIKit

class AsyncRPC: NSOperation {
    var URL: NSURL!
    
    init(url: String) {
        URL = NSURL(string: url)
    }
    
    override func main() {
    //Check for thread cancellation
        if cancelled {
            return
        }
        
    //Create the download session
        var req = NSURLRequest(URL: URL)
        var response: NSURLResponse?
        var data = NSURLConnection.sendSynchronousRequest(req, returningResponse: &response, error: nil)
        
    //Check for thread cancellation
        if cancelled {
            return
        }
        
    //Process the data
        Process(data!)
    }
    
    func Process(data: NSData) {
        //Stubbed, handled in a child class
    }
}