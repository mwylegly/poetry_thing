//
//  C4WorkSpace.m
//  poetry_thing
//
//  Created by MADT.Student on 12-05-01.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "C4WorkSpace.h"



@implementation C4WorkSpace {
    
    C4Shape *letterC;
    C4Shape *letterR;
    C4Shape *letterO;
    C4Shape *letterW;
}


-(void)setup {
    
    self.canvas.backgroundColor = [UIColor colorWithRed:.7 green:.7 blue:.7 alpha:1.0];

    C4Font *helvetica110 = [C4Font fontWithName:@"helvetica" size:110];
    
    int rPosition1 = [C4Math randomInt:768];
    int rPosition2 = [C4Math randomInt:768];
    int rPosition3 = [C4Math randomInt:768];
    int rPosition4 = [C4Math randomInt:768];
    
    
    letterC = [C4Shape shapeFromString:@"c" withFont:helvetica110];
    letterC.origin = CGPointMake(rPosition1, -20);
    letterC.fillColor = [UIColor blackColor];
    letterC.strokeColor = [UIColor clearColor];
    [self.canvas addShape:letterC];
    
    
    letterR = [C4Shape shapeFromString:@"r" withFont:helvetica110];
    letterR.origin = CGPointMake(rPosition2, -20);
    letterR.fillColor = [UIColor blackColor];
    letterR.strokeColor = [UIColor clearColor];
    [self.canvas addShape:letterR];
    
    
    letterO = [C4Shape shapeFromString:@"o" withFont:helvetica110];
    letterO.origin = CGPointMake(rPosition3, -20);
    letterO.fillColor = [UIColor blackColor];
    letterO.strokeColor = [UIColor clearColor];
    [self.canvas addShape:letterO];
    
    
    letterW = [C4Shape shapeFromString:@"w" withFont:helvetica110];
    letterW.origin = CGPointMake(rPosition4, -20);
    letterW.fillColor = [UIColor blackColor];
    letterW.strokeColor = [UIColor clearColor];
    [self.canvas addShape:letterW];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    int rDuration1 = 2 + [C4Math randomInt:5];
    int rDuration2 = 2 + [C4Math randomInt:5];
    int rDuration3 = 2 + [C4Math randomInt:5];
    int rDuration4 = 2 + [C4Math randomInt:5];
    
    letterC.animationDuration = rDuration1;
    letterC.origin = CGPointMake(290, 512);
    
    
    letterR.animationDuration = rDuration2;
    letterR.origin = CGPointMake(350, 512);
    
    
    letterO.animationDuration = rDuration3;
    letterO.origin = CGPointMake(390, 512);
    
    letterW.animationDuration = rDuration4;
    letterW.origin = CGPointMake(450, 512);
   
}

@end