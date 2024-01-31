func turn(repeter: Int){
    for i in 1 ... repeter {
        expert.turnLeft();
    }
}

func move(){
    while expert.isBlockedRight{
        expert.moveForward()
    }
    if expert.isOnGem {
        expert.collectGem()
    }
}

func collectSide(){
    expert.turnRight()
    expert.moveForward()
    expert.collectGem()
    turn(repeter: 2)
    expert.moveForward()
    expert.turnLockUp()
    expert.turnRight()
    expert.moveForward()
}

let expert = Expert()
world.place(expert, atColumn: 2, row: 6)

// main()
for i in 1 ... 2 {
    collectSide()
    move()
}