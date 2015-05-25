#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    // your code here
    [self addChild: character];
    character = (Character*)[CCBReader load:@"Character"];
    [physicsNode addChild:character];
    CCPhysicsNode* physicsNode;
}
-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here
- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    // this will get called every time the player touches the screen
    
    // Increment the time since the last obstacle was added
    timeSinceObstacle += delta; // delta is approximately 1/60th of a second
    
    // Check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        // Add a new obstacle
        [self addObstacle];
        
        // Then reset the timer.
        timeSinceObstacle = 0.0f;
}

@end
@end

