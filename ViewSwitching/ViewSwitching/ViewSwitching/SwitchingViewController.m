//
//  ViewController.m
//  ViewSwitching
//
//  Created by David P. Lopez on 9/28/16.
//  Copyright © 2016 David P. Lopez. All rights reserved.
//

#import "SwitchingViewController.h"
#import "BlueViewController.h"
#import "RedViewController.h"

@interface SwitchingViewController ()
@property(strong, nonatomic) BlueViewController *blueViewController;
@property(strong, nonatomic) RedViewController *redViewController;

@end

@implementation SwitchingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.blueViewController = [self.storyboard instantiateViewControllerWithIdentifier : @"Blue"];
    self.blueViewController.view.frame = self.view.frame;
    
    [self switchViewFromViewController : nil toViewController : self.blueViewController];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    if(!self.blueViewController.view.superview)
    {
        self.blueViewController = nil;
    }else{
        self.redViewController = nil;
    }
}

- (IBAction)switchViews:(id)sender
{
    //create a view controller if required
    if(!self.redViewController.view.superview)
    {
        if(!self.redViewController)
        {
            self.redViewController = [self.storyboard instantiateViewControllerWithIdentifier : @"Red"];
        }else{
            if(!self.blueViewController)
            {
                self.blueViewController = [self.storyboard instantiateViewControllerWithIdentifier : @"Blue"];
            }
        }
    }
    //switch view controllers
    
    [UIView beginAnimations:@"ViewFlip" context: NULL];
    [UIView setAnimationDuration:0.4];
    
    
    if(!self.redViewController.view.superview)
    {
        [UIView setAnimationTransition : UIViewAnimationTransitionFlipFromRight forView : self.view cache : YES];
        
        self.redViewController.view.frame = self.view.frame;
        [self switchViewFromViewController : self.blueViewController toViewController : self.redViewController];
    }else
    {
        [UIView setAnimationTransition : UIViewAnimationTransitionFlipFromLeft forView : self.view cache:YES];
        
        self.blueViewController.view.frame = self.view.frame;
        [self switchViewFromViewController : self.redViewController toViewController : self.blueViewController];
    }
    
    // commit animations
    
    [UIView commitAnimations];
    
}

//helper function. need this to help switchViews() action!!!!! study this and understand fool!!!!
- (void) switchViewFromViewController : (UIViewController *) fromVC toViewController : (UIViewController *) toVC {
    if(fromVC != nil)
    {
        [fromVC willMoveToParentViewController : nil];
        [fromVC.view removeFromSuperview];
        [fromVC removeFromParentViewController];
    }
    if(toVC != nil)
    {
        [self addChildViewController : toVC];
        [self.view insertSubview : toVC.view atIndex : 0];
        [toVC didMoveToParentViewController : self];
    }
}


@end
