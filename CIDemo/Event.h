//
//  Event.h
//  CIDemo
//
//  Created by Elvin Rakhmankulov on 4/3/15.
//  Copyright (c) 2015 SapientNitro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Event : NSManagedObject

@property (nonatomic, retain) NSDate * timeStamp;

@end
