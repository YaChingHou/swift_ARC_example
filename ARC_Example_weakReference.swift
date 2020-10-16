class Person{
    var name : String
    var character : Character?
  
    init(name : String) {
        self.name = name
        print("\(name) joined the game")
    }
    deinit {
        print("\(name) leaved the game")
    }
}

class Character{
  var role : String
  weak var person:Person?

    init(role : String) {
        self.role = role
        print("The role of \(role) is created.")
    }
    deinit {
        print("The role of \(role) is deleted")
    }
}

var amy : Person! = Person(name: "Amy")
var witch : Character! = Character(role: "witch")

amy.character = witch
witch.person = amy

print(witch.person!.name)  //output: Amy
print(amy.character!.role) //output: witch


/*stiuation one*/
amy=nil
print(witch.person!.name)  //fatal error
print(amy.character!.role) //fatal error
witch=nil

/*stiuation two*/
witch=nil
print(witch.person!.name)  //fatal error
print(amy.character!.role) //output: witch
amy=nil


