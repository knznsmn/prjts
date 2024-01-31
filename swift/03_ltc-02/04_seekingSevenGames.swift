func turn() {
    turnLeft()
    turnLeft()
}

var gem = 0
while gem < 7 {
    moveForward()
    if isBlocked {
        turn()
    }
    if isOnGem {
        collectGem()
        gem = gem + 1
    } 
}