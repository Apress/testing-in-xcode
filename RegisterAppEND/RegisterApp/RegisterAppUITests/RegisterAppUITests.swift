//
//  RegisterAppUITests.swift
//  RegisterAppUITests
//
//  Created by Bill Martensson on 2019-05-25.
//  Copyright © 2019 Bill Martensson. All rights reserved.
//

import XCTest

class RegisterAppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = true

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        
        let app = XCUIApplication()
        
        XCTAssertFalse(app.buttons["Register"].isEnabled)
        
        let aKey = app.keys["a"]
        
        app.textFields["email"].tap()
        aKey.tap()
        
        XCTAssertFalse(app.buttons["Register"].isEnabled)

        app.textFields["password"].tap()
        aKey.tap()

        XCTAssertFalse(app.buttons["Register"].isEnabled)

        app.textFields["Born year"].tap()
        aKey.tap()

        app.textFields["email"].tap()

        XCTAssertFalse(app.buttons["Register"].isEnabled)

        app.switches["switchLabel"].tap()

        XCTAssertTrue(app.buttons["Register"].isEnabled)

        app.buttons["Register"].tap()
        
        let errLab = app.textViews["errorLabel"]
        XCTAssertEqual(app.textViews["errorLabel"].value as! String, "Incorrect emailXXXXXX")
        
        
    }
    
    func testRec() {
        
        
    }

}
