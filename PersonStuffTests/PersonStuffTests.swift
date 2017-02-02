//
//  PersonStuffTests.swift
//  PersonStuffTests
//
//  Created by Jim Campagno on 1/31/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import XCTest
@testable import PersonStuff

class PersonStuffTests: XCTestCase {
    
    var becky: Person!
    var losAngeles: LaLaLand!
    
    override func setUp() {
        super.setUp()
        becky = Person(firstName: "Becky", lastName: "Bernstein")
        losAngeles = LaLaLand()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
}

// MARK: - Person Tests
extension PersonStuffTests {
    
    func testInit() {
        XCTAssertEqual(becky.firstName, "Becky")
        XCTAssertEqual(becky.lastName, "Bernstein")
        XCTAssertEqual(becky.happiness, 0, "A new Person instance should have its happiness set to 0 on init.")
    }
    
    func testFullName() {
        XCTAssertEqual(becky.fullName, "Becky Bernstein")
    }
    
    func testGreet() {
        let ralph = Person(firstName: "Ralph", lastName: "Journey")
        let result = becky.greet(person: ralph)
        XCTAssertEqual(result, "Hello Ralph Journey.")
        XCTAssertEqual(ralph.happiness, 2, "Ralphs happiness should now be 2 after he has been greeted by Becky")
        XCTAssertEqual(becky.happiness, 2, "Beckys happiness should now be 2 after she has greeted Ralph.")
    }
    
    func testDance() {
        becky.happiness = 0
        let jessica = Person(firstName: "Jessica", lastName: "Rose")
        let result = becky.dance(with: jessica)
        XCTAssertEqual(result, "💃🏼Becky Bernstein❤️ ❤️Jessica Rose💃🏼")
        XCTAssertEqual(jessica.happiness, 5, "Jessicas happiness should now be 5 after shes been hugged by Becky.")
        XCTAssertEqual(becky.happiness, 5, "Beckys happiness should now be 5 after she has hugged Jessica.")
    }
    
}

// MARK: - LaLaLand Tests
extension PersonStuffTests {
    
    func testLaLaLandInit() {
        XCTAssertNotNil(losAngeles.mia)
        XCTAssertNotNil(losAngeles.sebastian)
        XCTAssertEqual(losAngeles.sebastian.fullName, "Sebastian Wilder")
        XCTAssertEqual(losAngeles.mia.fullName, "Mia Dolan")
    }
    
    func testInitialMeeting() {
        let result = losAngeles.initialMeeting()
        XCTAssertEqual(result, "Hello Sebastian Wilder.")
    }
    
    func testDateNight() {
        let result = losAngeles.dateNight()
        XCTAssertEqual(result, "💃🏼Mia Dolan❤️ ❤️Sebastian Wilder💃🏼")
    }
    
}
