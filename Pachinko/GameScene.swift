//
//  GameScene.swift
//  Pachinko
//
//  Created by Shah Md Imran Hossain on 9/10/22.
//

import SpriteKit
//import GameplayKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: 512, y: 384)
        background.blendMode = .replace
        background.zPosition = -1
        addChild(background)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else {
            print("no touch event")
            return
        }
        
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: .red, size: CGSize(width: 32, height: 32))
        box.position = location
        addChild(box)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
