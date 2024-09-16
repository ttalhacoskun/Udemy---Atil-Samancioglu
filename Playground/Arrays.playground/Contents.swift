import UIKit

var myFavoriteMovies = ["deneme", "deneme1", "deneme2", "deneme3", 5] as [Any]

// as -> casting
// any -> any object

//index
myFavoriteMovies[0]
myFavoriteMovies[1]
myFavoriteMovies[2]
myFavoriteMovies[3]
myFavoriteMovies[4]


var myStringArray = ["deneme2", "deneme1", "deneme6", "deneme4"]
myStringArray[0].uppercased()
myStringArray.count
myStringArray[myStringArray.count - 2]
myStringArray.last
myStringArray.sort()

var myNumberArray = [1,2,3,4,5,6,7]
myNumberArray [0]
myNumberArray.append(4)
myNumberArray.last

myNumberArray [0] = 12
myNumberArray [0]


//Set

var mySet : Set = [1,2,3,4,5,1,2,3]
var myStringSet : Set = ["a","b","c","d"]

var myInternetArray = [1,3,5,6,4,2,3,4,6]
var myInternetSet = Set(myInternetArray)
print(myInternetSet)
print(myInternetArray)

var mySet1 : Set = [1,2,3]
var mySet2 : Set = [4,5,6]

var mySet3 = mySet1.union(mySet2)
print(mySet3)

//Dictionary
//key - value pairing

var myFavoriteDirectors = ["deneme" : "test", "deneme1" : "test1", "deneme2": "test2"]

myFavoriteDirectors["deneme"]
myFavoriteDirectors["deneme1"]

myFavoriteDirectors["deneme1"] = "quentin tarantino"
print(myFavoriteDirectors)

myFavoriteDirectors["deneme3"] = "test3"
print(myFavoriteDirectors)

var myDictionery = ["Run" : 100, "Swim" : 200, "Basketball" : 300]
myDictionery["Basketball"]
