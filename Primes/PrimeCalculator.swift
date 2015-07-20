//
//  PrimeCalculator.swift
//  
//
//  Created by Dorian Scheidt on 2015-07-20.
//
//

import Foundation

class PrimeCalculator {
    func prime(number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        var i = 2
        while i < number {
            if number % i == 0 {
                return false
            }
            i++
        }
        return true
    }
}