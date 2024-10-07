import UIKit

var greeting = "Hello, playground"

let count = 10
var price = 23.55

//count = 20 //error with constant
//price = 50

let firstMessage = "Swift is awesome. "
let secondMessage = "What do you think?"
var message = firstMessage + secondMessage

print(message)

message.uppercased()
message.lowercased()
message.count

var bookPrice = 39
var numOfCopies = 5
var totalPrice = bookPrice * numOfCopies
var totalPriceMessage = "The price of the book is $" + String(totalPrice)
//var totalPriceMessage = "The price of the book is $ \(totalPrice)"

var timeYouWakeUp = 6
//if timeYouWakeUp == 6 {
if (timeYouWakeUp == 6) {
    print("Cook yourself a big breakfast!")
} 
else {
    print("Go out for breakfast")
}

timeYouWakeUp = 7
switch timeYouWakeUp {
case 6:
    print("Cook yourself a big breakfast!")
default:
    print("Go out for breakfast")
}

var bonus = 5000
if (bonus >= 10000) {
    print("I will travel to Paris and London!")
} else if bonus >= 5000 && bonus < 10000 {
    print("I will travel to Tokyo")
} else if bonus >= 1000 && bonus < 5000 {
    print("I will travel to Bangkok")
} else {
    print("Just stay home")
}

var book1 = "Tools of Titans"
var book2 = "Rework"
var book3 = "Your Move"

var bookCollection = ["Tool of Titans", "Rework", "Your Move"]

bookCollection[1]

bookCollection.append("Authority")

bookCollection.count

for i in 0...3 {
print(bookCollection[i])
}

for index in 0...bookCollection.count-1{
print(bookCollection[index])
}

for book in bookCollection {
print(book)
}

var bookCollectionDict = ["1328683788": "Tool of Titans", "0307463745": "Rework", "1612060919": "Authority"]

for (key, value) in bookCollectionDict {
print("ISBN: \(key)")
print("Title: \(value)")
}

var emojiDict = ["😀": "smile",
                 "😃": "laugh",
                 "💩": "poop"]

var wordToLookup = "😀"
var meaning = emojiDict[wordToLookup]
print(meaning)
//meaning is actually an optional. It is because the dictionary may not have a value for the given key
emojiDict["💩"]
print(emojiDict["💩"])
//again the dictionary may not have a value for the given key
if let meaning = meaning{
    print(meaning)
}

//optional variable (defaulted with data type but has nil as value):
//Whenever you need to access an optional variable, Xcode forces you to perform verification to find out whether the optional has a value.
var jobTitle: String?
jobTitle = "iOS developer"

//if statements and forced unwrapping
if jobTitle != nil{
    message = "Your job title is " + jobTitle!
    // this ! is telling Xcode that you ensure the optional variable has a value, and it is safe to use it.
}

//Optional Binding
if let jobTitleWithValue = jobTitle {
var message = "Your job title is " + jobTitleWithValue
}
//You use if let to find out whether jobTitle has a value. If yes, the value is assigned to the temporary constant jobTitleWithValue
//you can actually use the same name like this
if let jobTitle = jobTitle {
var message = "Your job title is " + jobTitle
}
//Even though the names are the same, there are actually two variables in the code above. jobTitle in black is the optional variable, while jobTitle in blue is the temporary constant

if let meaning = meaning{
    print(meaning)
}

