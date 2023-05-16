//
//  ArithmeticTests.swift
//  SwiftLessonsTests
//
//  Created by Prince Avecillas on 5/16/23.
//

import XCTest
@testable import SwiftLessonsPlaylist

final class ArithmeticTests: XCTestCase {

    var sut: Arithmetic!
    
    override func setUpWithError() throws {
        sut = Arithmetic()
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testAdditionOfPositiveNumbers() {
        let num1 = 2, num2 = 5
    
        let result = sut.add(num1: num1, num2: num2)
        
        XCTAssertEqual(result, 7)
    }
    
    func testAdditionOfNegativeNumbers() {
        let num1 = 2, num2 = -5
        
        let result = sut.add(num1: num1, num2: num2)
        
        XCTAssertEqual(result, -3)
    }
    
    func testWrongAddition() {
        let num1 = 2, num2 = 0
        
        let result = sut.add(num1: num1, num2: num2)
        
        XCTAssertNotEqual(result, 20)
    }
    
    func testMultiplicationOfSimilarNumbers() {
        let num1 = 2, num2 = 2
        
        let result = sut.multiply(num1: num1, num2: num2)
        
        XCTAssertEqual(result, 4)
    }
    
    func testMultiplicationOfDifferentNumbers() {
        let num1 = 2, num2 = 5
        
        let result = sut.multiply(num1: num1, num2: num2)
        
        XCTAssertEqual(result, 10)
    }
}
