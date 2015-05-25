//
//  MainScene.h
//  PROJECTNAME
//
//  Created by Benjamin Encz on 10/10/13.
//  Copyright (c) 2014 MakeGamesWithUs inc. Free to use for all purposes.
//

#import "CCNode.h"
#import "GamePlayScene.h"

@interface MainScene : GamePlayScene

- (void)addObstacle; {
    Obstacle *obstacle = (Obstacle *)[CCBReader load:@"Obstacle"];
    CGPoint screenPosition = [self convertToWorldSpace:ccp(380, 0)];
    CGPoint worldPosition = [physicsNode convertToNodeSpace:screenPosition];
    obstacle.position = worldPosition;
    [obstacle setupRandomPosition];
    obstacle.zOrder = DrawingOrderPipes;
    [physicsNode addChild:obstacle];
    [_obstacles addObject:obstacle];
}

-(void) gameOver;

@end
