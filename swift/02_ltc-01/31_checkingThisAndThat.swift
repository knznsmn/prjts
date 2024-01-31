func turnAround() {
    turnLeft()
    turnLeft()
}
func climbStairs() {
    for i in 1 ... 2 {
        moveForward()
    }
}
func solveRight() {
    turnRight()
    climbStairs()
    toggleSwitch()
    turnAround()
    climbStairs()
    turnRight()
}
for i in 1 ... 7 {
    moveForward()
    if isBlockedLeft && isOnGem {
        collectGem()
        solveRight()
    } else if isOnGem {
        collectGem()
    }
}