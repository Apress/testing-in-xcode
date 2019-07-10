//
//  RegisterAppTestsUnit.swift
//  RegisterAppTestsUnit
//
//  Created by Bill Martensson on 2019-05-21.
//  Copyright © 2019 Bill Martensson. All rights reserved.
//

import XCTest

class RegisterAppTestsUnit: XCTestCase {
    
    let someone = Person()
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        someone.email = "aaa@bbb.com"
        someone.password = "X"
        someone.bornyear = "1950"
        someone.approved = true
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testEmail() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        someone.email = "aaa@bbb.com"
        XCTAssertNil(someone.checkForm())

        someone.email = ""
        XCTAssertNotNil(someone.checkForm())
        
        someone.email = "X"
        XCTAssertNotNil(someone.checkForm())

    }
    
    func testPassword()
    {
        someone.email = "aaa@bbb.com"
        someone.password = ""
        
        XCTAssertNotNil(someone.checkForm())
        
        someone.password = "X"
        
        XCTAssertNil(someone.checkForm())

    }
    
    func testAge()
    {
        someone.email = "aaa@bbb.com"
        someone.password = "X"
        someone.bornyear = "1950"
        
        XCTAssertNil(someone.checkForm())
        
        someone.bornyear = "2018"
        XCTAssertNotNil(someone.checkForm())

        someone.bornyear = "1850"
        XCTAssertNotNil(someone.checkForm())

        someone.bornyear = ""
        XCTAssertNotNil(someone.checkForm())
        
        someone.bornyear = "ABC"
        XCTAssertNotNil(someone.checkForm())
        
    }
    
    func testApproved()
    {
        someone.approved = true
        
        XCTAssertNil(someone.checkForm())

        someone.approved = false
        XCTAssertNotNil(someone.checkForm())

    }
    

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
