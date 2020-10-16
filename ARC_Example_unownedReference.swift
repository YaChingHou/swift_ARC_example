class Character{
  var role : String
  var skill : Skill?  //strong reference

    init(role : String) {
        self.role = role
        print("The role of \(role) is created.")
    }
    deinit {
        print("The role of \(role) is deleted")
    }
}

class Skill{
  var skillName: String
  unowned let character: Character // unowned reference

  init(skillName : String,character : Character) {
        self.skillName = skillName
        self.character = character
    }
    deinit {
        print("The skill is deleted")
    }
}

var prophet : Character?
prophet=Character(role:"prophet")

prophet!.skill=Skill(skillName:"can check good or bad", character:prophet!)

prophet=nil //output: The role of prophet is deleted.
print(prophet!.skill.skillName) //fateal error
