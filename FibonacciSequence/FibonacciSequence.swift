//
//  FibonacciSequence.swift
//  FibonacciSequence
//
//  Created by Marina Aguiar on 4/20/23.
//

/*
 Fibonacci sequence

  In mathematics, the Fibonacci numbers, commonly denoted Fn , form a sequence, the Fibonacci sequence, in which each number is the sum of the two preceding ones.
  The sequence commonly starts from 0 and 1, although some authors start the sequence from 1 and 1 or sometimes (as did Fibonacci) from 1 and 2.
  Starting from 0 and 1, the first few values in the sequence are:

 0 - posição 0
 1  - posição 1
 1 - posição 2
 2 - posição 3
 3 - posição 4
 5 - posição 5
 8 - posição 6
 13 - posição 7
 21 - posição 8
 34 - posição 9
 55 - posição 10
 89 - posição 11
 144 - posição 12

  Write a program that given a position can tell which is
 the Fibonacci number

 */

class FibonacciSequence {

    func buildFibonacciSequence(for position: Int) -> [Int] {

        var sequence = [0, 1]

        if position <= 1 {
            return sequence
        }

        for _ in 0...position - 2 {
            let previousNumberInSequence = sequence[sequence.count - 2]
            print(previousNumberInSequence)
            let currentNumberInSequence = sequence.last!
            print(currentNumberInSequence)
            let fibonacciNumber = previousNumberInSequence + currentNumberInSequence
            sequence.append(fibonacciNumber)
            print(sequence)
        }
        return sequence
    }

    func getFibonacciSequenceNumber(for position: Int) -> Int? {

        let fibonacciSequence = buildFibonacciSequence(for: position)

        if position <= 1 {
            return fibonacciSequence[position]
        }

        return fibonacciSequence[position]
    }

}
