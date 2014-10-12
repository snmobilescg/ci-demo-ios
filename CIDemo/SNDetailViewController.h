//
//  SNDetailViewController.h
//  CIDemo
//
//  Created by Elvin Rakhmankulov on 10/12/14.
//  Copyright (c) 2014 SapientNitro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SNDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
