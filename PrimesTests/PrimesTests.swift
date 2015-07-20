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
    
    let calculator = PrimeCalculator()
    
    func testOneIsPrime() {
        XCTAssertTrue(calculator.prime(1), "One is a prime number")
    }
    
    
    func testTwoIsPrime() {
        XCTAssert(calculator.prime(2), "Two is also a prime number")
    }
    
    func testFourIsNotPrime() {
        XCTAssert(!calculator.prime(4), "Four is not a prime number")
    }
    
    func testFiveIsPrime() {
        XCTAssert(calculator.prime(5), "Five is prime")
    }
    
    func testTheNextPrimeIsSeven() {
        XCTAssert(!calculator.prime(6), "Six is not prime")
        XCTAssert(calculator.prime(7), "seven is prime")
    }
    
    func testFifteenIsNotPrime() {
        XCTAssertFalse(calculator.prime(15), "Fifteen is not prime")
    }
    
    func testThreeThousandFiveHundredThirtyNineIsPrime() {
        XCTAssert(calculator.prime(3539), "3539 is prime")
        XCTAssertFalse(calculator.prime(3521), "3521 is not prime")
    }
    
}
