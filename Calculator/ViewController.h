/********************************************************/
//  Class: ViewController.h
//  Name: Calculator
//  Created by A. Diallo on 8/18/14.
//  Copyright (c) 2014 DiariConnect. All rights reserved.
/********************************************************/

#import <UIKit/UIKit.h>

//Let's declare some variables
double displayTheNumber;
double resultNumber;
int operation;
BOOL isItDecimal;


@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *result;
//The following are the functions for the signs and the AC.
- (IBAction)AC:(id)sender;
- (IBAction)plus_minus:(id)sender;
- (IBAction)divide:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)equals:(id)sender;
-(void)operationWithNumbers:(int)number;
-(void)setResultWithNumber:(int)number;
//These are the functions for the numbers and the dot.
- (IBAction)dot:(id)sender;
- (IBAction)zero:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;

@end
