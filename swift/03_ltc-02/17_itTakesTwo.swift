let expert = Expert()
let character = Character()

func exWalk() {
    for i in 1 ... 2 {
        expert.moveForward()
    }
}
func exLockDown() {
    for i in 1 ... 2 {
        expert.turnLockDown()
    }
}
func exLockUp() {
    for i in 1 ... 2 {
        expert.turnLockUp()
    }
}

func charWalk() {
    for i in 1 ... 2 {
        character.moveForward()
    }
}
func charCollect() {
    if character.isOnGem {
        character.collectGem()
    }
    else if character.isOnClosedSwitch {
        character.toggleSwitch()
    }
}

// Expert walks towards pink lever
expert.turnLeft()
expert.moveForward()
exWalk()
expert.turnRight()
exWalk()
expert.turnLeft()
exLockDown()

// Character collects the gem
charWalk()
charCollect()

// Expert
for i in 1 ... 2 {
    expert.turnRight()
    exWalk()
}
for i in 1 ... 2 {
    exWalk()    
}
expert.turnRight()
exWalk()
expert.turnLeft()
expert.turnLockUp()

// Character toggles the switch
charWalk()
charCollect()