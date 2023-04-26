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

    func test_fibonacciSequence_forPositionZeroOrOne_shouldReturnItsOwnValue() {

        let position = 0
        let result =  fibonacciSequence.getFibonacciSequenceNumber(for: position)
        XCTAssertEqual(result, position)
    }

    func test_fibonacciSequence_forPosition2_shouldReturnTheSumOfPosition0AndPosition1() {
        let position = 2

        let positionZero = fibonacciSequence.getFibonacciSequenceNumber(for: 0)
        let positionOne = fibonacciSequence.getFibonacciSequenceNumber(for: 1)
        let positionTwo = fibonacciSequence.getFibonacciSequenceNumber(for: 2)

        XCTAssertEqual(positionTwo!, positionZero! + positionOne!)
    }

    func test_fibonacciSequence_forPosition5_shouldReturnTheSumOfPosition3AndPosition4() {
        let position = 5

        let positionThree = fibonacciSequence.getFibonacciSequenceNumber(for: 3)
        let positionFour = fibonacciSequence.getFibonacciSequenceNumber(for: 4)
        let positionFive = fibonacciSequence.getFibonacciSequenceNumber(for: 5)

        XCTAssertEqual(positionFive!, positionThree! + positionFour!)
    }

    func test_fibonacciSequence_forPositionN_shouldReturnTheSumOfPreviousTwoPositions() {

        let n = 4
        let positionPrevious1 = fibonacciSequence.getFibonacciSequenceNumber(for: (n - 1))
        let positionPrevious2 = fibonacciSequence.getFibonacciSequenceNumber(for: (n - 2))

        let positionN = fibonacciSequence.getFibonacciSequenceNumber(for: n)

        print("for position \(n) the fibonacci result is \(positionN!)")

        XCTAssertEqual(positionN, positionPrevious1! + positionPrevious2!)
    }
}
