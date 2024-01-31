

// This code does the job but loops infinitely.
while !isOnGem && !isBlocked {
    moveForward()
    if isBlocked {
        turnRight()
    }
    if isOnClosedSwitch {
        toggleSwitch()
    }
    if isOnGem {
        collectGem()
    }
}