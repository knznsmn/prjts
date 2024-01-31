func turnAround() {
    turnLeft()
    turnLeft()
}
func climbStairs() {
    for i in 1 ... 2 {
        moveForward()
    }
}
func solveStairs() {
    turnLeft()
    climbStairs()
    collectGem()
    turnAround()
    climbStairs()
    turnLeft()
}
for i in 1 ... 4 {
    moveForward()
    if isOnGem {
        collectGem()
    } else if !isOnGem {
        solveStairs()
    }
}