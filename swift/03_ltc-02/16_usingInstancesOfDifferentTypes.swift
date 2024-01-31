let expert = Expert()
let character = Character()

func turn() {
    character.turnLeft()
    character.turnLeft()
}

func move() {
    for i in 1 ... 2 {
        character.moveForward()
        if character.isOnGem {
            character.collectGem()
        }
    }
}

func leverDown() {
    for i in 1 ... 2 {
        expert.turnLockDown()
    }
}

// Main program
expert.moveForward()
expert.turnLockUp()

move()
character.turnRight()
move()

leverDown()

character.moveForward()
character.collectGem()