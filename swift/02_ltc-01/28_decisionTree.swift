func turnAround() {
    turnLeft()
    turnLeft()
}
func climbStairs() {
    for i in 1 ... 3 {
            moveForward()
        }
}
func solveRight() {
    turnRight()
    climbStairs()
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
    turnRight()
    climbStairs()
    turnRight()
}
func solveLeft() {
    turnLeft()
    moveForward()
    collectGem()
    turnAround()
    moveForward()
    turnLeft()
}

for i in 1 ... 5 {
    moveForward()
    if isOnGem {
        collectGem()
        solveRight()
    } else if isOnClosedSwitch {
        toggleSwitch()
        solveLeft()
    }
}