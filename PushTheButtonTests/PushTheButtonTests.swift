//
//  PushTheButtonTests.swift
//  PushTheButtonTests
//
//  Created by Lukas Zielinski on 10/02/16.
//  Copyright © 2016 OTTO. All rights reserved.
//

import XCTest
@testable import PushTheButton

class PushTheButtonTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        viewController = storyboard.instantiateInitialViewController() as! ViewController
        
        UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
    }
    
    func testExample() {
        viewController.tappedButton()
        
        XCTAssertEqual(viewController.label.text!, "Number of taps: 1")
    }
}
