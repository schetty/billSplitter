//
//  ViewController.m
//  billSplitter
//
//  Created by naomi schettini on 2016-09-18.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *inputBillAmt;
@property (strong, nonatomic) IBOutlet UISlider *slideBillAmt;
@property (strong, nonatomic) IBOutlet UIButton *calculate;
@property (strong, nonatomic) IBOutlet UILabel *displayAmt;
@property (nonatomic) NSString* checkBillInputField;
@property int numToSplit;

-(BOOL)isNumeric:(NSString*)textFieldString;


@end

@implementation ViewController

-(BOOL)isNumeric:(NSString*)textFieldString{
    BOOL isValid = NO;
    NSCharacterSet *alphaNumbersSet = [NSCharacterSet decimalDigitCharacterSet];
    NSCharacterSet *stringSet = [NSCharacterSet characterSetWithCharactersInString:self.checkBillInputField];
    isValid = [alphaNumbersSet isSupersetOfSet:stringSet];
    return isValid;
}

- (IBAction)calculateSplitAmt:(UIButton *)sender {
 self.checkBillInputField = self.inputBillAmt.text;
    NSString *textInput = self.checkBillInputField;
    
    if (![self isNumeric:textInput]) {
        [self.displayAmt setText:@"Please Input numbers Only"];
    }
    if ([self isNumeric:textInput]) {
        [self splitBill];
    }
}

    
- (IBAction)splitAmtChanged:(UISlider *)sender {
    NSNumber *NSnumToSplit;
        int numToSplit = [NSnumToSplit intValue];
    
    NSnumToSplit = [NSNumber numberWithInt: self.slideBillAmt.value];
    self.numberOfPeople = [NSNumberFormatter localizedStringFromNumber:NSnumToSplit numberStyle:NSNumberFormatterDecimalStyle];
    [self.displayAmt setText:self.numberOfPeople];
    
    
}

- (void)splitBill{
    double billAmt = [self.inputBillAmt.text doubleValue];
    int finalAmt = (billAmt) / (self.numToSplit);
    
    NSString* finalAmtStr = [NSString stringWithFormat:@"Each Pays : %d", finalAmt];
    [self.displayAmt setText:finalAmtStr];
    }
    

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
