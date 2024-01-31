let expert = Expert()
let character = Character()

func turnLock(up: Bool, numberOfTimes: Int {
    for i in 1 ... numberOfTimes {
        if up {
                expert.turnLockUp()
        }
        else {
            expert.turnLockDown()
        }    
    }
} 

func turn(exp: Bool, numberOfTimes: Int) {
    for i in 1 ... numberOfTimes {
        if exp {
            expert.turnLeft()
        }
        else {
            character.turnLeft()
        }
        /* 1 = turns left
           2 = turns around
           3 = turns right
        */
    }
}

// Expert turns the lever
turnLock(up: true, numberOfTimes: 3)
turn(exp: true, numberOfTimes: 2)
turnLock(up: true, numberOfTimes: 3)

// Byte collects the first gem
character.move(distance: 3)
character.collectGem()
turn(exp: false, numberOfTimes: 2)

// Character moves to the 2nd gem
for i in 1 ... 2 {
    character.move(distance: 1)
    turn(exp: false, numberOfTimes: 1)
}

// Expert moves down the yellow lever 
turn(exp: true, numberOfTimes: 2)
turnLock(up: false, numberOfTimes: 2)

// Byte now collects the second gem
character.move(distance: 1)
character.collectGem()
// Byte now collects the third gem
turn(exp: false, numberOfTimes: 2)
character.move(distance: 1)

// Expert moves down the levers again
turnLock(up: false, numberOfTimes: 1)
turn(exp: true, numberOfTimes: 2)
turnLock(up: false, numberOfTimes: 3)

// Byte now walks and collects the gem
character.move(distance: 2)
character.collectGem()