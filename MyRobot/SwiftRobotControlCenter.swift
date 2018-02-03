//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//
/*

 
 */
import UIKit
//all robor commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
	
	
	//in this function change levelName
	override func viewDidLoad() {
		levelName = "L22H" // level name
		
		super.viewDidLoad()
		
	}
 
    
    //write your code here
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
	    
       buildAllColumns()
        
       
        
     
	}
    
    
    //Разложить конфеты в шахматном порядке
    
    func moveChessEmpty() {
        while frontIsClear {
            moveA()
            moveB()
            
        }
        
    }
    
    func moveChess() {
        while frontIsClear {
            moveA()
            moveB()
            
        }
        
    }
    
    
    func moveA() {
        put()
        if frontIsClear {
            move()
        }
    }
    
    func moveB() {
        if frontIsClear{
            move()
        }
    }
    
    
    
   
    
    func doChessCandy() {
        moveOddNumbers()
        moveEvenNumbers()
        
        moveOddNumbers()
        moveEvenNumbers()
        
        moveOddNumbers()
        moveEvenNumbers()
        
        moveOddNumbers()
        moveEvenNumbers()
        
        moveOddNumbers()
        moveEvenNumbers()
        
        moveOddNumbers()
        
    }
    
    func moveOddNumbers() {
        for _ in 0..<7 {
            put()
            move()
            move()
            put()
        }
        if frontIsBlocked && rightIsBlocked {
            turnLeft()
        } else {
            uTurnRight()
        }
    }
    
    func moveEvenNumbers() {
        for _ in 0..<7 {
            move()
            put()
            move()
        }
        uTurnLeft()
    }
    
    func uTurnRight() {
        turnRight()
        move()
        turnRight()
        
    }
    
    func uTurnLeft() {
        turnLeft()
        move()
        turnLeft()
    }
    
    
    
    
    
    
    
    //Достроить колонны L2H/L22H
    
    func buildAllColumns() {
        turnLeft()
        buildTheColumn()
        buildTheColumn()
        buildTheColumn()
        buildTheColumn()
    }
    
    func buildTheColumn() {
        
        moveALongColumn()
        turnAround()
        moveALongColumn()
        turnLeft()
        moveToNextColumn()
    }
    
    func moveALongColumn() {
        for _ in 0..<8{
            move()
            if noCandyPresent{
                put()
        }
        }
    }
    
    func turnAround() {
        turnRight()
        turnRight()
    }
    
    func moveToNextColumn() {
        for _ in 0...3{
            move()
            if frontIsBlocked {
                break
            }
        }
        turnLeft()
    }
    
    
    
    
    //Обойти вершины L2C/L3C
    func moveAroundPeaks() {
        for _ in 0..<14 {
            if frontIsClear {
                move()
            }
            else {
                passOnePeak()
            }
        }
    }
    
    func passOnePeak() {
        
        turnRight()
        moveAlongLeftWall()
        uTurn()
        moveAlongLeftWall()
        turnNextPeakDirrection()
        
    }
    
    func turnNextPeakDirrection() {
        turnRight()
        turnRight()
    }
    
    func uTurn() {
        move()
        turnLeft()
        move()
    }
    
    func moveAlongLeftWall() {
        while leftIsBlocked && frontIsClear{
            move()
        }
        turnLeft()
    }
    
    func moveToWall() {
        while frontIsClear{
            move()
        }
        turnRight()
    }
    
    func turnLeft() {
        turnRight()
        turnRight()
        turnRight()
    }
}

