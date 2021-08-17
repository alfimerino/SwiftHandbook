import UIKit

struct Topic {
    var ID: String
    var parentID: String
}


var dict = ["cola" : 10, "fanta" : 12, "sprite" : 8]

var myArr = Array(dict.keys)
var sortedKeys = myArr.sorted() {
    var obj1 = dict[$0] // get ob associated w/ key 1
    var obj2 = dict[$1] // get ob associated w/ key 2
    return obj1 > obj2
}


var topics = [Topic]()

topics.append(Topic(ID: "1", parentID: "0"))
topics.append(Topic(ID: "2", parentID: "1"))
topics.append(Topic(ID: "3", parentID: "1"))
topics.append(Topic(ID: "4", parentID: "0"))
topics.append(Topic(ID: "5", parentID: "0"))
topics.append(Topic(ID: "6", parentID: "5"))


let oo = ["bob", "alice", "doug"]

print(oo.sorted())


var topicsWithParents = [String: [String]]()

let newTopics = topics.filter{ $0.parentID != "0"}

let groupTopics = Dictionary(grouping: newTopics, by: {$0.parentID})

let sorted = groupTopics.sorted {(first, second) -> Bool in
    return first > second
}

var myArr = Array(groupTopics.keys)

var sortedKeys = myArr.sorted() {
    var obj1 = groupTopics[$0]
    var obj2 = groupTopics[$1]
    
    return obj
}

//print(sortedKeys)

for topic in groupTopics {
    
}


