func moveAndCollect() {
    moveForward()
    collectGem()
}
func turnAround() {
    turnLeft()
    turnLeft()
}
func harvest() {
    moveAndCollect()
    for i in 1 ... 2 {
        turnLeft()
        moveAndCollect()
        turnAround()
        moveForward()
    }
    turnLeft()
    moveAndCollect()
    moveForward()
}
for i in 1 ... 4 {
    harvest()
}