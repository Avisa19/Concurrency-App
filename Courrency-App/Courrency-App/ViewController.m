//
//  ViewController.m
//  Courrency-App
//
//  Created by Avisa Poshtkouhi on 7/16/20.
//  Copyright © 2020 Avisa Poshtkouhi. All rights reserved.
//

#import "ViewController.h"
#import "CurrencyRequest/CRCurrencyRequest.h"
#import "CurrencyRequest/CRCurrencyResults.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyA;
@property (weak, nonatomic) IBOutlet UILabel *currencyB;
@property (weak, nonatomic) IBOutlet UILabel *currencyC;

@end

@implementation ViewController
- (IBAction)button_Tapped:(id)sender {
    self.convertButton.enabled = NO;
    self.currencyA.text = @"A";
    self.currencyB.text = @"B";
    self.currencyC.text = @"C";
}



@end
