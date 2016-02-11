//
//  PushTheButtonUITests.swift
//  PushTheButtonUITests
//
//  Created by Lukas Zielinski on 10/02/16.
//  Copyright © 2016 OTTO. All rights reserved.
//

import XCTest

class PushTheButtonUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        XCUIDevice.sharedDevice().orientation = .Portrait
        
        let app = XCUIApplication()
        
        app.buttons["Tap Me"].tap()
        
        XCTAssert(app.staticTexts["Number of taps: 1"].exists)
    }
    
}
