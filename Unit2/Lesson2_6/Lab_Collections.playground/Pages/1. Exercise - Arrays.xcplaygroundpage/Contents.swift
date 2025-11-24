/*:
## Exercise - Arrays
 
 Assume you are an event coordinator for a community charity event and are keeping a list of who has registered. Create a variable `registrationList` that will hold strings. It should be empty after initialization.
 */
var registrationList: [String] = []// registrationList should be an empty array of Strings after initialization
//:  Your friend Jasmine is the first to register for the event. Add her name to `registrationList` using the `append(_:)` method. Print the contents of the collection.
registrationList.append("Jasmine")// Jasmine is the first to registerprint(registrationList)// Print the contents: ["Jasmine"]

//:  Add four additional names into the array using the `+=` operator. All of the names should be added in one step. Print the contents of the collection.
registrationList += ["Miguel", "Amina", "Priya", "Sophie"]// Add four more names in one stepprint(registrationList)// Print the contents: ["Jasmine", "Miguel", "Amina", "Priya", "Sophie"]

//:  Use the `insert(_:at:)` method to add `Trey` into the array as the second element. Print the contents of the collection.
registrationList.insert("Trey", at: 1)// Insert Trey as the second elementprint(registrationList)// Print the contents: ["Jasmine", "Trey", "Miguel", "Amina", "Priya", "Sophie"]
//:  Somebody had a conflict and decided to transfer registration to someone else. Use array subscripting to change the sixth element to `Elton`. Print the contents of the collection.
registrationList[5] = "Elton"// Change the sixth registrant to Eltonprint(registrationList)// Print the contents: ["Jasmine", "Trey", "Miguel", "Amina", "Priya", "Elton"]

//:  Call `removeLast()` on `registrationList`. If done correctly, this should remove `Elton` from the collection. Store the result of `removeLast()` into a new constant `deletedItem`, then print `deletedItem`.
let deletedItem = registrationList.removeLast()// Remove the last registrant and store the resultprint(deletedItem)// Print: "Elton"

/*:
page 1 of 4  |  [Next: App Exercise - Activity Challenge](@next)
 */
