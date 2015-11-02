//
//  DetailViewController.h
//  ITR3DTouch
//
//  Created by kiruthika selvavinayagam on 11/2/15.
//  Copyright © 2015 kiruthika selvavinayagam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

