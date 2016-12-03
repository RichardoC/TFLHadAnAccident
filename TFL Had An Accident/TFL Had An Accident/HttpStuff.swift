//
//  HttpStuff.swift
//  TFL Had An Accident
//
//  Created by Richard Finlay Tweed on 03/12/2016.
//  Copyright © 2016 Richard Finlay Tweed. All rights reserved.
//

import Foundation



func viewDidLoad() {
    
//    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let requestURL: NSURL = NSURL(string: "http://www.learnswiftonline.com/Samples/subway.json")!
    let urlRequest: NSMutableURLRequest = NSMutableURLRequest(url: requestURL as URL)
    let session = URLSession.shared
    let task = session.dataTask(with: urlRequest as URLRequest) {
        (data, response, error) -> Void in
        
        let httpResponse = response as! HTTPURLResponse
        let statusCode = httpResponse.statusCode
        
        if (statusCode == 200) {
            print("Everyone is fine, file downloaded successfully.")
        }
    }
    
    task.resume()
    
}
