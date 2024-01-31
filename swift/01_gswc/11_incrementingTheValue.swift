var gemCounter = 0

for i in 1 ... 15 {
    if isOnGem {
        collectGem()
        gemCounter = gemCounter + 1
        moveForward()
    } else if isBlocked {
        turnRight()
        moveForward()
    }
    if !isOnGem {
        moveForward()
    } 
}