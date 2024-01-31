while !isBlocked {
    while !isOnGem {
        moveForward()
    }

    if isOnGem {
        turnLeft()
        collectGem()
    }
} 