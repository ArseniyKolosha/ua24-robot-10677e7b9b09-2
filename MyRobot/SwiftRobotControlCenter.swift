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
		levelName = "L4H" // level name
		
		super.viewDidLoad()
		
	}
 
    
    //write your code here
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
	    
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
    
    
    //Разложить конфеты в шахматном порядке
  
    func moveOddNumbers() {
        while frontIsClear {
            move()
            put()
            move()
        }
        if rightIsBlocked && frontIsBlocked {
        turnRight()
    }
        uTurnRight()
    }
        
    
    func moveEvenNumbers() {
        while frontIsClear {
            put()
            move()
            move()
        }
        put()
        if leftIsBlocked && frontIsBlocked {
            turnLeft()
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

