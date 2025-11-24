/*:
## Exercise - Class Memberwise Initializers and References

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. The base class `Spaceship` and subclasses `Fighter` and `ShieldedShip` have been provided for you below. You will use these to complete the exercises.
 */
class Spaceship {
    let name: String
    var health: Int
    var position: Int

    func moveLeft() {
        position -= 1
    }

    func moveRight() {
        position += 1
    }

    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int

    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
}

class ShieldedShip: Fighter {
    var shieldStrength: Int

    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}
/*:
 Note that each class above has an error by the class declaration that says "Class has no initializers." Unlike structs, classes do not come with memberwise initializers because the standard memberwise initializers don't always play nicely with inheritance. You can get rid of the error by providing default values for everything, but it is common, and better practice, to simply write your own initializer. Go to the declaration of `Spaceship` and add an initializer that takes in an argument for each property on `Spaceship` and sets the properties accordingly.

 Then create an instance of `Spaceship` below called `falcon`. Use the memberwise initializer you just created. The ship's name should be "Falcon."
 */
class Spaceship {
    let name: String
    var health: Int
    var position: Int

// Custom initializer for all properties
init(name: String, health: Int, position: Int) {
    self.name = name
    self.health = health
    self.position = position
}

func moveLeft() {
    position -= 1
}

func moveRight() {
    position += 1
}

func wasHit() {
    health -= 5
    if health <= 0 {
        print("Sorry, your ship was hit one too many times. Do you want to play again?")
    }
}

}

// Create Spaceship instance called falcon using the new initializer
let falcon = Spaceship(name: "Falcon", health: 100, position: 0)
/*:
 Writing initializers for subclasses can get tricky. Your initializer needs to not only set the properties declared on the subclass, but also set all of the uninitialized properties on classes that it inherits from. Go to the declaration of `Fighter` and write an initializer that takes an argument for each property on `Fighter` and for each property on `Spaceship`. Set the properties accordingly. (Hint: you can call through to a superclass's initializer with `super.init` *after* you initialize all of the properties on the subclass).

 Then create an instance of `Fighter` below called `destroyer`. Use the memberwise initializer you just created. The ship's name should be "Destroyer."
 */
class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int

// Custom initializer for Fighter (and inherited Spaceship properties)
init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int) {
    self.weapon = weapon
    self.remainingFirePower = remainingFirePower
    super.init(name: name, health: health, position: position)
}

func fire() {
    if remainingFirePower > 0 {
        remainingFirePower -= 1
    } else {
        print("You have no more fire power.")
    }
}

}

// Creating an instance of Fighter called destroyer
let destroyer = Fighter(name: "Destroyer", health: 80, position: 5, weapon: "Laser", remainingFirePower: 10)
/*:
 Now go add an initializer to `ShieldedShip` that takes an argument for each property on `ShieldedShip`, `Fighter`, and `Spaceship`, and sets the properties accordingly. Remember that you can call through to the initializer on `Fighter` using `super.init`.

 Then create an instance of `ShieldedShip` below called `defender`. Use the memberwise initializer you just created. The ship's name should be "Defender."
 */
class ShieldedShip: Fighter {
    var shieldStrength: Int

// Custom initializer for ShieldedShip (plus inherited properties)
init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int, shieldStrength: Int) {
    self.shieldStrength = shieldStrength
    super.init(name: name, health: health, position: position, weapon: weapon, remainingFirePower: remainingFirePower)
}

override func wasHit() {
    if shieldStrength > 0 {
        shieldStrength -= 5
    } else {
        super.wasHit()
    }
}

}

// Creating an instance of ShieldedShip called defender
let defender = ShieldedShip(name: "Defender", health: 120, position: 10, weapon: "Plasma", remainingFirePower: 15, shieldStrength: 25)
//:  Create a new constant named `sameShip` and set it equal to `falcon`. Print out the position of `sameShip` and `falcon`, then call `moveLeft()` on `sameShip` and print out the position of `sameShip` and `falcon` again. Did both positions change? Why? If both were structs instead of classes, would it be the same? Why or why not? Provide your answer in a comment or print statement below.
swift
let sameShip = falcon
// sameShip and falcon now both reference the same Spaceship object in memory.

print("Before moving left: sameShip.position =", sameShip.position, ", falcon.position =", falcon.position)
// Output: Before moving left: sameShip.position = 0 , falcon.position = 0
// Both show the same value, since they're the same object.

sameShip.moveLeft()
// This decreases the position of the ship by 1.
// Because sameShip and falcon reference the same object, both will now show the updated position.

print("After moving left: sameShip.position =", sameShip.position, ", falcon.position =", falcon.position)
// Output: After moving left: sameShip.position = -1 , falcon.position = -1
// Both changed! Any change through one reference is visible through the other.

/// Explanation:
print("""
Did both positions change? Yes. This is because in Swift, classes are reference types.
When you assign one class instance to another variable or constant, both refer to the same single instance in memory.
If Spaceship were a struct (value type) instead, assigning falcon to sameShip would create a new copy.
In that case, changing sameShip would NOT affect falcon — they'd each keep their own separate values.
""")

/*:
 _Copyright © 2023 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 4 of 4
 */
