/********************************************************/
//  Class: ViewController.m
//  Name: Calculator
//  Created by A. Diallo on 8/18/14.
//  Copyright (c) 2014 DiariConnect. All rights reserved.
/********************************************************/

#import "ViewController.h"
#import "math.h"



@implementation ViewController
@synthesize result;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    isItDecimal=FALSE;
    resultNumber=0;
    result.adjustsFontSizeToFitWidth=TRUE;
}

-(void)operationWithNumbers:(int)number{
    isItDecimal = false;
    if(resultNumber==0){
        resultNumber=displayTheNumber;
    }
    else{
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        switch (operation) {
            case 1:
                resultNumber += displayTheNumber;
                break;
            case 2:
                resultNumber -= displayTheNumber;
                break;
            case 3:
                resultNumber *= displayTheNumber;
                break;
            case 4:
                resultNumber /= displayTheNumber;
                break;
                
            default:
                break;
        }
    }
    operation = number;
    displayTheNumber=0;
        
}
-(void)setResultWithNumber:(int)number{
    if(!isItDecimal){
        displayTheNumber *= 10;
        displayTheNumber +=number;
        result.text = [NSString stringWithFormat:@"%.0f",displayTheNumber];
    }
    else{
        result.text = [result.text stringByAppendingString:[NSString stringWithFormat:@"%d",number]];
    }
    displayTheNumber = [result.text floatValue];
    
    
}

- (IBAction)AC:(id)sender {
    displayTheNumber = 0;
    resultNumber = 0;
    operation = 0;
    isItDecimal = false;
   result.text = [NSString stringWithFormat:@"%i",0];
}

- (IBAction)plus_minus:(id)sender {
    displayTheNumber = 0 - displayTheNumber;
    if(isItDecimal)
        result.text = [NSString stringWithFormat:@"%.2f", displayTheNumber];
    else
        result.text = [NSString stringWithFormat:@"%.0f", displayTheNumber];
}
- (IBAction)divide:(id)sender {
    if(resultNumber != 0){
        [self operationWithNumbers:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        displayTheNumber = [result.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumbers:4];
}
- (IBAction)multiply:(id)sender {
    if(resultNumber != 0){
        [self operationWithNumbers:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        displayTheNumber = [result.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumbers:3];

}
- (IBAction)minus:(id)sender {
    if(resultNumber != 0){
        [self operationWithNumbers:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        displayTheNumber = [result.text floatValue];
        resultNumber = 0;
    }
    [self operationWithNumbers:2];
}
- (IBAction)plus:(id)sender {
    if(resultNumber != 0){
        [self operationWithNumbers:operation];
        result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
        displayTheNumber = [result.text floatValue];
        resultNumber = 0;
        
    }
    [self operationWithNumbers:1];
}
- (IBAction)equals:(id)sender {
    [self operationWithNumbers:operation];
    result.text = [NSString stringWithFormat:@"%.2f",resultNumber];
    displayTheNumber = [result.text floatValue];
    resultNumber = 0;
}

- (IBAction)dot:(id)sender {
    isItDecimal = true;
    NSRange range = [result.text rangeOfString:@"."];
    if (range.location ==NSNotFound){
        result.text = [result.text stringByAppendingString:@"."];
    }
}

//The following are the numbers from 0 to 9..
- (IBAction)zero:(id)sender {
    [self setResultWithNumber:0];
}
- (IBAction)one:(id)sender {
    [self setResultWithNumber:1];
}
- (IBAction)two:(id)sender {
    [self setResultWithNumber:2];
}
- (IBAction)three:(id)sender {
    [self setResultWithNumber:3];
}
- (IBAction)four:(id)sender {
    [self setResultWithNumber:4];
}
- (IBAction)five:(id)sender {
    [self setResultWithNumber:5];
}
- (IBAction)six:(id)sender {
    [self setResultWithNumber:6];
}
- (IBAction)seven:(id)sender {
    [self setResultWithNumber:7];
}
- (IBAction)eight:(id)sender {
    [self setResultWithNumber:8];
}
- (IBAction)nine:(id)sender {
    [self setResultWithNumber:9];
}



@end
