#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

-(void)initialize
{
    //load a new Character from the CCB file
    character = (Character*)[CCBReader load:@"Character"];
    
    //add your character as a child of physicsNode
    [physicsNode addChild:character];
    
    //adding obstacle
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    
}
//update method will be run every frame
//delta is the time that has elapsed since the last time it was run
-(void)update:(CCTime)delta
{
    
    //increment the time since the last obstacle was added
    timeSinceObstacle += delta; //delta is approximately 1/60th of a second
    //check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f) {
        
        //add a new obstacle
        [self addObstacle];
        
        //then reset the timer
        timeSinceObstacle = 0.0f;
        
    }
}

// put new methods here

-(void)touchBegan:(UITouch *)touch withEvent:(UIEvent *)event {
    //this will get called every time the player touches the screen
    [character flap];
}
@end


