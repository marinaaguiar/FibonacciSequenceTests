//
//  FibonacciSequence.swift
//  FibonacciSequence
//
//  Created by Marina Aguiar on 4/20/23.
//

class FibonacciSequence {

    func buildSequenceFor(_ value: Int) -> [Int] {
        var sequence = [0, 1]
        if value <= 1 {
            return sequence
        }
        for _ in 0...value - 2 {
            let first = sequence[sequence.count - 2]
            let second = sequence.last!
            sequence.append(first + second)
        }
        return sequence
    }
}
