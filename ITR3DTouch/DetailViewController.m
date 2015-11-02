//
//  DetailViewController.m
//  ITR3DTouch
//
//  Created by kiruthika selvavinayagam on 11/2/15.
//  Copyright © 2015 kiruthika selvavinayagam. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [[touches allObjects] firstObject];
    if (touch && ([self traitCollection].forceTouchCapability == UIForceTouchCapabilityAvailable)) {
        NSString *string = [NSString stringWithFormat:@"force %f max %f",touch.force,touch.maximumPossibleForce];
        NSLog(string);
    }
}

- (NSArray <id <UIPreviewActionItem>> *)previewActionItems {
    UIPreviewAction *regularAction = [UIPreviewAction actionWithTitle:@"Regular" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
    }];
    UIPreviewAction *destructiveAction = [UIPreviewAction actionWithTitle:@"Destructive" style:UIPreviewActionStyleDestructive handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        
    }];
    UIPreviewActionGroup *actionGroup = [UIPreviewActionGroup actionGroupWithTitle:@"Group" style:UIPreviewActionStyleDefault actions:@[regularAction, destructiveAction]];
    return @[regularAction, destructiveAction, actionGroup];
}

@end
