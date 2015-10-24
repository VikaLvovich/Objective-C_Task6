//
//  LVRestaurantHelper.h
//  LVTask6
//
//  Created by fpmi on 10.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LVRestaurantHelper : NSObject

@property int tips;
@property int service;
@property int interior;
@property int cousine;
@property int cost;
@property BOOL isEqualToDescription;

- (id)initWithInteriorMark:(int)interior AndServiceMark: (int) service AndCousine: (int) cousine AndCost: (int) cost AndIsEqualToDescription: (BOOL) isEqualToDescription;
- (int)countTips;


@end
