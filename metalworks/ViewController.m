//
//  ViewController.m
//  metalworks
//
//  Created by CSG_Mobile04 on 12/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize DisplayLabel = _DisplayLabel;
@synthesize textField = _textField;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setDisplayLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)go:(id)sender {
    
    // wired u text field to action did end on exit to owner
    
    NSLog(@"here %@", self.textField.text);
    
    // put text field away
    
    [self.textField resignFirstResponder];
    
    NSString *textToDisplay = [NSString stringWithFormat:
                                @"here %@", self.textField.text];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Hi: " message:textToDisplay delegate: self cancelButtonTitle:@"Bye" otherButtonTitles: nil];
    
    [alert show ];
    
    // touch up inside
    //[this.textField]
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{

    self.textField.text = nil;


}

- (IBAction)buttonPressed:(UIButton *)sender {
    
    NSString *butText = [sender currentTitle];
    
    UILabel *l = [sender titleLabel] ;
    
    NSLog (@"test %@", l.text);

    NSLog(@"the digit pressed was %@" ,butText);
    
    UILabel *label1 = self.DisplayLabel;
    
    NSString *label1text =label1.text;
    
    NSLog(@"the label was %@" ,label1text);
    
    [label1 setText:butText];
    
    NSLog(@"the label was %@" ,label1text);
    
}
@end
