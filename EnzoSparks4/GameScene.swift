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
    }
    
    func createSprite( position : CGPoint ) {
        let sprite = SKSpriteNode(imageNamed: "roundSmiley.png")
        sprite.xScale = 0.2
        sprite.yScale = 0.2
        sprite.color = SKColor.blueColor()
        sprite.position = position
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
}
