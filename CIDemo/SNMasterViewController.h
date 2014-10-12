//
//  SNMasterViewController.h
//  CIDemo
//
//  Created by Elvin Rakhmankulov on 10/12/14.
//  Copyright (c) 2014 SapientNitro. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreData/CoreData.h>

@interface SNMasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end
