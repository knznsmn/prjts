let totalGems = randomNumberOfGems
var collectedGems = 0

// Navigation algorithm
func navigate() {
    if isBlockedLeft && isBlockedRight {
        moveForward()
    }
    else if isBlockedLeft{
        turnRight()
        moveForward()
    }
    else if isBlockedRight {
        turnLeft()
        moveForward()
    }
    if isBlocked && isBlockedLeft && isBlockedRight {
        turnLeft()
        turnLeft()
    }
}
while collectedGems < totalGems {
    if isOnGem {
        collectGem()
        collectedGems += 1
        
    }
    navigate()
}
