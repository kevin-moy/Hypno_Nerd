//
//  ReminderViewController.m
//  HypnoNerd
//
//  Created by Kevin Moy on 8/20/14.
//  Copyright (c) 2014 Kevin Moy. All rights reserved.
//

#import "ReminderViewController.h"
@interface ReminderViewController ()

@property (nonatomic, weak) IBOutlet UIDatePicker *datePicker;
@end

@implementation ReminderViewController

- (IBAction)addReminder:(id)sender
{
    NSDate *date = self.datePicker.date;
    NSLog(@"Settting a reminder for %@",date);
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hypnotize me";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil
                           bundle:nibBundleOrNil];
    if (self) {
        // Set tab bar item title
        self.tabBarItem.title = @"Reminder";
        
        // Create UIImage from file
        UIImage *image = [UIImage imageNamed:@"Time.png"];
        
        // Put image on tab bar item
        self.tabBarItem.image = image;
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"Loaded");
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.datePicker.minimumDate = [NSDate dateWithTimeIntervalSinceNow:60];
    
}

@end
