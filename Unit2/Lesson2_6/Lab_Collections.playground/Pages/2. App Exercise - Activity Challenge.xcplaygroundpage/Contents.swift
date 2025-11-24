/*:
## App Exercise - Activity Challenge
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracking app shows users a list of possible challenges, grouped by activity type (i.e. walking challenges, running challenges, calisthenics challenges, weightlifting challenges, etc.) A challenge could be as simple as "Walk 3 miles a day" or as intense as "Run 5 times a week." 
 
 Using arrays of type `String`, create at least two lists, one for walking challenges, and one for running challenges. Each should have at least two challenges and should be initialized using an array literal. Feel free to create more lists for different activities.
 */
let walkingChallenges = ["Walk 3 miles a day", "Take 10,000 steps"]
let runningChallenges = ["Run 5 times a week", "Complete a 10k"]

// Optionally, here’s a third for variety:
let calisthenicsChallenges = ["50 push-ups every day", "Plank for 5 minutes"]

//:  In your app you want to show all of these lists on the same screen grouped into sections. Create a `challenges` array that holds each of the lists you have created (it will be an array of arrays). Using `challenges`, print the first element in the second challenge list.
// Group all activity challenge lists into a single array of arrayslet challenges = [walkingChallenges, runningChallenges, calisthenicsChallenges]// Print the first element in the second challenge list (which is runningChallenges)print(challenges[1][0])// Output: Run 5 times a week

//:  All of the challenges will reset at the end of the month. Use the `removeAll` to remove everything from `challenges`. Print `challenges`.
var mutableChallenges = challenges // Make a mutable copy since 'let' arrays are immutable
mutableChallenges.removeAll()
print(mutableChallenges) // Output: []

//:  Create a new array of type `String` that will represent challenges a user has committed to instead of available challenges. It can be an empty array or have a few items in it.
var committedChallenges: [String] = []// Uncomment below to test with one challenge committed
// committedChallenges = ["Run 5 times a week"]// Uncomment below to test with multiple challenges committed
// committedChallenges = ["Run 5 times a week", "Ten thousand steps"]

//:  Write an if statement that will use `isEmpty` to check if there is anything in the array. If there is not, print a statement asking the user to commit to a challenge. Add an else-if statement that will print "The challenge you have chosen is <INSERT CHOSEN CHALLENGE>" if the array count is exactly 1. Then add an else statement that will print "You have chosen multiple challenges."
if committedChallenges.isEmpty {
    print("Please commit to a challenge.")
} else if committedChallenges.count == 1 {
    print("The challenge you have chosen is (committedChallenges[0])")
} else {
    print("You have chosen multiple challenges.")
}

/*:
[Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Dictionaries](@next)
 */
