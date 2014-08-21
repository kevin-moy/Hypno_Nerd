//
//  HypnosisViewController.m
//  HypnoNerd
//
//  Created by Kevin Moy on 8/20/14.
//  Copyright (c) 2014 Kevin Moy. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"
@implementation HypnosisViewController

- (void)loadView
{
    // Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    HypnosisView *backgroundView = [[HypnosisView alloc]initWithFrame:frame];
    
    // Set it as view of view controller
    self.view = backgroundView;
}
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        // Set tab bar item title
        self.tabBarItem.title = @"Hypnotize";
        
        // Create UIImage from file
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        
        // Put image on tab bar item
        self.tabBarItem.image = image;
    }
    return self;
}
@end
