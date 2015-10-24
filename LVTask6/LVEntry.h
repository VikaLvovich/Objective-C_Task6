//
//  LVEntry.h
//  LVTask6
//
//  Created by fpmi on 10.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LVEntry : NSObject {
    NSMutableArray *records;
    NSString *plistPath;
}

- (void)showRecords;
- (void)addRecordWithTips: (int) tips AndDate: (NSDate*) date AndRestaurantName: (NSString*) name;
- (void)saveRecords;

@end
