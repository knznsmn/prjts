func moveThenToggle() {
    moveForward()
    moveForward()
    toggleSwitch()
}
func turnAround() {
    turnLeft()
    turnLeft()
}
func solveArm() {
    moveThenToggle()
    turnAround()
    moveForward()
    moveForward()
}
func solveLongArm() {
    moveThenToggle()
    solveArm()
    moveForward()
    moveForward()
}
solveArm()
turnLeft()
solveLongArm()
turnLeft()
solveArm()
turnLeft()
solveLongArm()
