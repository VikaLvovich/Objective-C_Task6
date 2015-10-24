//
//  LVEntry.m
//  LVTask6
//
//  Created by fpmi on 10.10.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "LVEntry.h"
#import "LVInformation.h"

@implementation LVEntry

-(id) init
{
    if(self = [super init]) {
        NSString *errorDesc = nil;
        NSPropertyListFormat format;
        plistPath = @"/Volumes/NO NAME/LVTask6/LVTask6/PList.plist";
       // if(![[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
       //     plistPath = [[NSBundle mainBundle]pathForResource:@"records" ofType:@"plist"];
       // }
        NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:plistPath];
        NSDictionary *temp = (NSDictionary *)[NSPropertyListSerialization propertyListFromData:plistXML mutabilityOption:NSPropertyListMutableContainersAndLeaves format:&format errorDescription:&errorDesc];
        if(!temp)
            NSLog(@"%@, format: %d", errorDesc, format);
        else
        {
            NSMutableArray *recs = [NSMutableArray arrayWithArray:[temp objectForKey: @"records"]];
            records = [NSMutableArray array];
            for(id record in recs)
            {
                [self addRecordWithTips:[[record objectForKey:@"tips"] intValue] AndDate:[record objectForKey:@"date"] AndRestaurantName:[record objectForKey:@"name"] ];
            }
        }

    }
    return self;
}

-(void) showRecords
{
    for(id record in records)
        NSLog(@"%@ - %@ - %d",  ((LVInformation*)record).name, ((LVInformation*)record).date, ((LVInformation*)record).tips);
}

-(void) addRecordWithTips: (int) tips AndDate: (NSDate*) date AndRestaurantName: (NSString*) name {
    LVInformation *info = [[LVInformation alloc] initWithRestaurantName:name AndDate:date AndTips:tips];
    [records addObject: info];
    [info release];
}

-(void) saveRecords
{
    NSString *error;
    NSMutableArray *recs = [NSMutableArray array];
    for(id record in records)
    {
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setObject:((LVInformation*)record).name forKey:@"name"];
        [dict setObject:((LVInformation*)record).date forKey:@"date"];
        [dict setObject:[NSNumber numberWithInteger:((LVInformation*)record).tips] forKey:@"tips"];
        [recs addObject:dict];
    }
    NSMutableDictionary *plistDictionary = [NSMutableDictionary dictionary];
    [plistDictionary setObject:recs forKey:@"records"];
    NSData *plistData = [NSPropertyListSerialization dataFromPropertyList:plistDictionary format:NSPropertyListXMLFormat_v1_0 errorDescription:&error];
    if(plistData) [plistData writeToFile:plistPath atomically:YES];
    else NSLog(@"%@", error);
}
@end
