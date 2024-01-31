func turn() {
    turnLeft()
    turnLeft()
}

var gem = 0

while gem < 4 {
    if isOnGem {
        collectGem()
        gem += 1
        turn()
    }
    if isBlocked {
        turn()
    }
    if gem < 1 || gem > 2 {
        bluePortal.isActive = false
        pinkPortal.isActive = false
    }
    else {
        bluePortal.isActive = true
        pinkPortal.isActive = true
    }
    moveForward()
}