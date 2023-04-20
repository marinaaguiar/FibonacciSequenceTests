//
//  FibonacciSequenceTests.swift
//  FibonacciSequenceTests
//
//  Created by Marina Aguiar on 4/20/23.
//
@testable import FibonacciSequence
import XCTest

final class FibonacciSequenceTests: XCTestCase {
    var fibonacciSequence: FibonacciSequence!

    override func setUp() {
        super.setUp()
        fibonacciSequence = FibonacciSequence()
    }

    override func tearDown() {
        fibonacciSequence = nil
        super.tearDown()
    }

    func testSequenceForNumberOne() {
        let expectedResult = [0, 1]
        let result = fibonacciSequence.buildSequenceFor(1)

        XCTAssertEqual(result, expectedResult)
    }

    func testSequenceForNumberTwo() {
        let expectedResult = [0, 1, 1]
        let result = fibonacciSequence.buildSequenceFor(2)

        XCTAssertEqual(result, expectedResult)
    }

    func testSequenceForNumberFour() {
        let expectedResult = [0, 1, 1, 2, 3]
        let result = fibonacciSequence.buildSequenceFor(4)

        XCTAssertEqual(result, expectedResult)
    }

    func testSequenceForNumberFive() {
        let expectedResult = [0, 1, 1, 2, 3, 5]
        let result = fibonacciSequence.buildSequenceFor(5)

        XCTAssertEqual(result, expectedResult)
    }

    func testSequenceResults() {
        for i in 0...10 {
            print("for value \(i): " + fibonacciSequence.buildSequenceFor(i).description)
        }
    }
}
