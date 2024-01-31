func findGem() {
    moveForward()
    if isOnGem {
        collectGem()
    } else if isBlocked {
        turnLeft()
    } else {
        toggleSwitch()
    }
}

for i in 1 ... 15 {
    findGem()
}