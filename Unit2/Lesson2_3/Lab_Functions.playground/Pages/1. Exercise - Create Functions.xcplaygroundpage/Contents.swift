/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself() {
    print("Hi, I’m an aspiring iOS developer learning Swift! I enjoy discovering how code can bring ideas to life.")
}
// Call the introduceMyself functionintroduceMyself()

//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation
func magicEightBall() {
    let randomNum = Int.random(in: 0...4)
    if randomNum == 0 {
        print("Yes, definitely.")
    } else if randomNum == 1 {
        print("Ask again later.")
    } else if randomNum == 2 {
        print("Don't count on it.")
    } else if randomNum == 3 {
        print("Without a doubt.")
    } else if randomNum == 4 {
        print("My sources say no.")
    }
}

// Call the magicEightBall function several times to see different responses
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()
magicEightBall()

/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
