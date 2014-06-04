//
//  ViewController.h
//  metalworks
//
//  Created by CSG_Mobile04 on 12/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *DisplayLabel;

@property (strong, nonatomic) IBOutlet UITextField *textField;

- (IBAction)buttonPressed:(id)sender;

-  (IBAction)go:(id)sender ;

@end
