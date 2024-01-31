let switchCounter = numberOfSwitches
var collectedGems = 0

while collectedGems < switchCounter {
    if isBlockedLeft && isBlockedRight {
        moveForward()
    }
    else if isBlockedLeft {
        turnRight()
        moveForward()
    }
    else if isBlockedRight {
        turnLeft()
        moveForward()
    }
    if isOnGem {
        collectGem()
        collectedGems = collectedGems + 1
    }
}