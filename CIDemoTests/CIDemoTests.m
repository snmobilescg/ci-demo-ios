//
//  CIDemoTests.m
//  CIDemoTests
//
//  Created by Elvin Rakhmankulov on 10/12/14.
//  Copyright (c) 2014 SapientNitro. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "SNAppDelegate.h"
#import "SNMasterViewController.h"
#import "SNDetailViewController.h"
#import "Event.h"

@interface CIDemoTests : XCTestCase

@end

@implementation CIDemoTests
SNAppDelegate *appDelegate;

- (void)setUp
{
    [super setUp];
    appDelegate = (SNAppDelegate *)[[UIApplication sharedApplication] delegate];

}

- (void)tearDown
{
    appDelegate = nil;
    [super tearDown];
}

- (void)testPassingTestOne
{
    XCTAssertTrue(appDelegate.persistentStoreCoordinator == appDelegate.managedObjectContext.persistentStoreCoordinator);
}

- (void)testPassingTestTwo
{
    SNMasterViewController *mvc = [[SNMasterViewController alloc] init];
    mvc.managedObjectContext = appDelegate.managedObjectContext;
    
    UINavigationController *navigationController = (UINavigationController *)appDelegate.window.rootViewController;
    SNMasterViewController *controller = (SNMasterViewController *)navigationController.topViewController;
    controller.managedObjectContext = appDelegate.managedObjectContext;
    
    XCTAssertTrue(mvc.fetchedResultsController.managedObjectContext == appDelegate.managedObjectContext);
}

- (void)testFailingTestThree
{
    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (void)testPassingTestFour
{
    Event *newEvent = [NSEntityDescription
                                    insertNewObjectForEntityForName:@"Event"
                                    inManagedObjectContext:appDelegate.managedObjectContext];
    newEvent.timeStamp = [NSDate date];
    [appDelegate saveContext];
    SNDetailViewController *dvc = [[SNDetailViewController alloc] init];
    dvc.detailItem = newEvent;
    XCTAssertTrue([dvc.detailDescriptionLabel.text isEqualToString:[[newEvent valueForKey:@"timeStamp"] description]]);
}

@end
