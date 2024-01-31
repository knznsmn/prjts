let expert = Expert()
let character = Character()

func turn(experte: Bool, repeter: Int){
    for i in 1 ... repeter {
        if experte {
            expert.turnLeft()
        }
        else {
            character.turnLeft()
        }
    }
}

func navigate(){
}
// Turn for accessing top & bottom
func firstToil(top: Bool){
    for i in 1 ... 4 {
        if top {
            expert.turnLock(up: true, numberOfTimes: 4)
            expert.turnLeft()
        }
        else {
            expert.turnLock(up: false, numberOfTimes: 3)
            expert.turnLeft()
        }
    }
} 

func gemRage(top: Bool){
    if top {
        for i in 1 ... 3 {
            while !character.isOnGem {
                character.moveForward()
            }
            character.collectGem()
            character.turnRight()
            character.moveForward()
        }
    }
    else {
        character.turnLeft()
        character.moveForward()
        character.collectGem()
        turn(experte: false, repeter: 2)
            
        for i in 1 ... 2 {
            for i in 1 ... 2 {
                character.moveForward()
            }
            character.turnRight()
            for i in 1 ... 2 {
                character.moveForward()
            }
            character.collectGem()
            turn(experte: false, repeter: 2)
            for i in 1 ... 2 {
                character.moveForward()
            }
            character.turnRight()
        }
            
    }
}

/* main()
 */

// Expert crank all the pistons up
firstToil(top: true)
// Dropee collects all the top gems
gemRage(top: true)

// Expert cranks all the levers down
firstToil(top: false)
// Dropee collects all the bottom gems
gemRage(top: false)
for i in 1 ... 2 {
    character.moveForward()
}
    character.collectGem()
