//
//  RegisterAppUITestsUI.swift
//  RegisterAppUITestsUI
//
//  Created by Bill Martensson on 2019-05-25.
//  Copyright © 2019 Bill Martensson. All rights reserved.
//

import XCTest

class RegisterAppUITestsUI: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

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
        
        app.textFields["email"].tap()
        app.textFields["email"].typeText("X")
        
        XCTAssertFalse(app.buttons["Register"].isEnabled)

        app.textFields["password"].tap()
        app.textFields["password"].typeText("abc")
        
        XCTAssertFalse(app.buttons["Register"].isEnabled)

        app.textFields["Born year"].tap()
        app.textFields["Born year"].typeText("1950")
        
        app.textFields["email"].tap()
        
        XCTAssertFalse(app.buttons["Register"].isEnabled)

        app.switches["switchLabel"].tap()
        
        XCTAssertTrue(app.buttons["Register"].isEnabled)

        app.buttons["Register"].tap()
        
        XCTAssertEqual(app.staticTexts["errorId"].label, "Incorrect email")
        
        app.textFields["email"].tap()
        app.textFields["email"].typeText("XXX@YYY.com")

        app.buttons["Register"].tap()
        
        XCTAssertEqual(app.staticTexts["errorId"].exists, false)

        /*
        app.textFields["email"].tap()
        app.textFields["password"].tap()
        
        let aKey = app/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        aKey.tap()
        aKey.tap()
        
        let bKey = app/*@START_MENU_TOKEN@*/.keys["b"]/*[[".keyboards.keys[\"b\"]",".keys[\"b\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        bKey.tap()
        bKey.tap()
        app.buttons["Register"].tap()
        */
        
    }

}
