var gemCounter = 0

moveForward()
for i in 1 ... 2 {
    moveForward()
    if isOnGem {
        collectGem()
        gemCounter = gemCounter + 1
    }
    else {
        turnLeft()
        turnLeft()
    }
}