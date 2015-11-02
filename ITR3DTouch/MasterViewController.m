//
//  MasterViewController.m
//  ITR3DTouch
//
//  Created by kiruthika selvavinayagam on 11/2/15.
//  Copyright © 2015 kiruthika selvavinayagam. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"

@interface MasterViewController ()<UIViewControllerPreviewingDelegate>

@property (nonatomic, weak) IBOutlet UIButton *button;

@end

@implementation MasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self traitCollection].forceTouchCapability == UIForceTouchCapabilityAvailable) {
        [self registerForPreviewingWithDelegate:self sourceView:self.button];
    }
    UIApplicationShortcutItem *shortcut = [[UIApplicationShortcutItem alloc] initWithType:@"ITR.ITR3DTouch.new_item.Dynamic" localizedTitle:@"New Item2" localizedSubtitle:@"Dynamic" icon:[UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd] userInfo:nil];
    [UIApplication sharedApplication].shortcutItems = @[shortcut];
}

#pragma mark - preview delegate

- (UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location NS_AVAILABLE_IOS(9_0) {
    DetailViewController *viewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"DetailViewController"];
    viewController.preferredContentSize = CGSizeMake(0, 0);
    return viewController;
    
}
- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit NS_AVAILABLE_IOS(9_0) {
    [self showViewController:viewControllerToCommit sender:self];
}

@end
