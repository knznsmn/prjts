func navigate() {
    if isBlockedRight && isBlocked {
        turnLeft()
        moveForward()
    }
    else if isBlockedRight {
        moveForward()
    }
    else {
        turnRight()
        moveForward()
    }
}
func turnAround() {
    turnLeft()
    turnLeft()
}

while !isOnGem {
    navigate()
}
collectGem()