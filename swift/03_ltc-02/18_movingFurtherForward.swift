let expert = Expert()

func move(distance: Int {
    for i in 1 ... distance {
        expert.moveForward()
    }
}

func turn(side: Int) {
    if side == 1 {
        expert.turnRight()
    }
    else {
        expert.turnLeft()
    }
}
func collect() {
    if expert.isOnGem {
        expert.collectGem()
    }
    else if expert.isOnClosedSwitch {
        expert.toggleSwitch()
    }
}

move(distance: 6)
turn(side: 1)
move(distance: 2)
turn(side: 1)
for i in 1 ... 2 {
    move(distance: 5)
    turn(side: 0)
}
expert.turnLockUp()
turn(side: 0)
for i in 1 ... 2 {
    move(distance: 3)
    turn(side: 1)
}

move(distance: 4)
collect()