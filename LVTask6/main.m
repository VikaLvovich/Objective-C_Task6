//
//  main.m
//  LVTask6
//
//  Created by fpmi on 10.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LVRestaurantHelper.h"
#import "LVEntry.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        LVRestaurantHelper *restHelper1 = [[LVRestaurantHelper alloc] initWithInteriorMark: 9 AndServiceMark: 10 AndCousine: 9 AndCost: 1000 AndIsEqualToDescription: true];
        [restHelper1 countTips];
        LVRestaurantHelper *restHelper2 = [[LVRestaurantHelper alloc] initWithInteriorMark: 10 AndServiceMark: 10 AndCousine: 10 AndCost: 5000 AndIsEqualToDescription: false];
        [restHelper2 countTips];
        LVEntry *plist = [[LVEntry alloc]init];
        [plist addRecordWithTips:restHelper1.tips AndDate:[NSDate date] AndRestaurantName:@"Rest2"];
        [plist addRecordWithTips:restHelper2.tips AndDate:[NSDate date] AndRestaurantName:@"Rest3"];
        [plist showRecords];
        [plist saveRecords];
        [plist release];
        [restHelper1 release];
        [restHelper2 release];
        
        
    }
    return 0;
}
