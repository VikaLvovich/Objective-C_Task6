//
//  LVRestaurantHelper.m
//  LVTask6
//
//  Created by fpmi on 10.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "LVRestaurantHelper.h"

@implementation LVRestaurantHelper

- (id)initWithInteriorMark:(int)interior AndServiceMark: (int) service AndCousine: (int) cousine AndCost: (int) cost AndIsEqualToDescription: (BOOL) isEqualToDescription
{
    self = [super init];
    if (self) {
        self.service = service;
        self.interior = interior;
        self.cousine = cousine;
        self.cost = cost;
        self.isEqualToDescription = isEqualToDescription;
    }
    return self;
}

- (int)countTips
{
    int mark = (self.service * 2 + self.cousine * 4 +self.interior)/7;
    self.tips = self.cost/20 + mark*self.cost/100;
    if (self.isEqualToDescription)
        self.tips += 2;
    
    return self.tips;
}

@end
