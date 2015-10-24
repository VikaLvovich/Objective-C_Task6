//
//  LVInformation.m
//  LVTask6
//
//  Created by fpmi on 15.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "LVInformation.h"

@implementation LVInformation

- (id)initWithRestaurantName: (NSString*) name AndDate: (NSDate*) date AndTips: (int) tips
{
    self = [super init];
    if (self) {
        self.name = name;
        self.date = date;
        self.tips = tips;
    }
    return self;
}

@end
