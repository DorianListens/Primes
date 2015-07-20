//
//  PrimesTests.swift
//  PrimesTests
//
//  Created by Dorian Scheidt on 2015-07-20.
//  Copyright (c) 2015 Dorian Listens. All rights reserved.
//

import UIKit
import XCTest

class PrimesTests: XCTestCase {
    
    let vc = ViewController()
    func testViewControllerCanLoad() {
        vc.loadView()
        XCTAssert(vc.view != nil)
    }
    
    func testVCReturnsCorrectStringForTwo() {
        var resultText = vc.isItPrime(2)
        XCTAssertEqual(resultText, "Yes, 2 is Prime!", "Two is Prime")
    }
    
    func testVCReturnsCorrectStringForFifteen() {
        var resultText = vc.isItPrime(15)
        XCTAssertEqual(resultText, "No, 15 is not Prime.", "Fifteen isn't Prime")
    }
}
