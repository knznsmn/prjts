func turnAround() {
    turnLeft()
    turnLeft()
}
func solveArm() {
    moveForward()
    moveForward()
    toggleSwitch()
    turnAround()
    moveForward()
    moveForward()
    turnLeft()
}
for i in 1 ... 4 {
    solveArm()
}