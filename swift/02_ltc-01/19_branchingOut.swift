func turnAround() {
    turnLeft()
    turnLeft()
}
func toStairs() {
    moveForward()
    moveForward()
    turnRight()
}
func climbStairs() {
    for i in 1 ... 7 {
        moveForward()
    }
}
func moveToToggle() {
    toStairs()
    climbStairs()
    toggleSwitch()
    turnAround()
    climbStairs()
}
for i in 1 ... 3 {
    moveToToggle()
    turnRight()
}