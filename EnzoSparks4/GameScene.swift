//
//  GameScene.swift
//  EnzoSparks4
//
//  Created by Enio Ohmaye on 7/16/14.
//  Copyright (c) 2014 Enio Ohmaye. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = SKColor.whiteColor()
        self.physicsWorld.gravity = CGVectorMake(0.0, -0.4)
    }
    
    func createSprite( position : CGPoint ) {
        let sprite = SKSpriteNode(imageNamed: "roundSmiley.png")
        sprite.name = "smiley"
        sprite.xScale = 0.3
        sprite.yScale = 0.3
        sprite.color = SKColor.blueColor()
        sprite.alpha = 0.8
        sprite.position = position
        sprite.physicsBody = SKPhysicsBody(circleOfRadius: 5)
        self.addChild(sprite)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            createSprite(location)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    override func didSimulatePhysics() {

        for child in children {
            if child is SKSpriteNode {
                if child.position.y < 0 {
                    child.removeFromParent()
                    println("Removed")
                }
            }
        }
    }
}
