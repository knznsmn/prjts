// Declarations
var collectedGem = 0
var collectedSwitch = 0

func move() {
    if isBlockedRight && isBlockedLeft {
        moveForward()
    }
    else if isBlocked && isBlockedRight {
        turnLeft()
        moveForward()
    }
    else if isBlocked && isBlockedLeft {
        turnRight()
        moveForward()
    }
}
// Main
while collectedSwitch < 4 {
    while collectedGem < 3 {
        move()
        if isOnGem {
            collectGem()
            collectedGem = collectedGem + 1
        }
    }
    move()
    if isOnClosedSwitch {
        toggleSwitch()
        collectedSwitch = collectedSwitch + 1
    }
}