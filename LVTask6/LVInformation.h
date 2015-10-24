//
//  LVInformation.h
//  LVTask6
//
//  Created by fpmi on 15.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LVInformation : NSObject

@property (copy) NSString *name;
@property (copy) NSDate *date;
@property int tips;

- (id)initWithRestaurantName: (NSString*) name AndDate: (NSDate*) date AndTips: (int) tips;

@end
