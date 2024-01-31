var gemCounter = 0

for i in 1 ... 18 {
    moveForward()
    if isBlocked {
        turnRight()
    }
    if isOnGem {
        collectGem()
        gemCounter = gemCounter + 1        
    }
}