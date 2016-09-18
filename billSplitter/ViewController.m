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

@end

@implementation ViewController
- (IBAction)calculateSplitAmt:(UIButton *)sender {
}
- (IBAction)splitAmtChanged:(UISlider *)sender {
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
