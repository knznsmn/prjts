let totalGems = randomNumberOfGems

// Turning around
func turn() {
    turnLeft()
    turnLeft()
}

// Toggling the portals' state
func toggle() {
    if bluePortal.isActive {
        bluePortal.isActive = false
        pinkPortal.isActive = true
    }
    else {
        bluePortal.isActive = true
        pinkPortal.isActive = false
    }
}
func navigate() {
    if isBlockedLeft && isBlockedRight && isBlocked {
        turn()
        toggle()
    }
    else if isBlockedLeft && isBlockedRight {
        moveForward()
    }
    else if isBlockedLeft{
        turnRight()
        moveForward()
        }
    else {
        turnLeft()
        moveForward()
    }
}

//Main

var gemsCollected = 0
while gemsCollected < totalGems {
    navigate()
    if isOnGem {
        collectGem()
        gemsCollected += 1
    }
}

