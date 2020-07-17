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

@interface ViewController () <CRCurrencyRequestDelegate>

@property (nonatomic) CRCurrencyRequest *req;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIButton *convertButton;
@property (weak, nonatomic) IBOutlet UILabel *currencyA;
@property (weak, nonatomic) IBOutlet UILabel *currencyB;
@property (weak, nonatomic) IBOutlet UILabel *currencyC;

@end

@implementation ViewController


- (IBAction)button_Tapped:(id)sender {
    // send request and active delegate for transfer data
    self.req = [[CRCurrencyRequest alloc] init];
    self.req.delegate = self;
    
    self.convertButton.enabled = NO;
    [self.req start];
}


- (void)currencyRequest:(CRCurrencyRequest *)req
    retrievedCurrencies:(CRCurrencyResults *)currencies {
    
    self.convertButton.enabled = YES;
    double intValue = [self.inputField.text floatValue];
    
    // Euro
    double euroValue = intValue * currencies.EUR;
    NSString *euroStr = [NSString stringWithFormat:@"%.2f", euroValue];
    self.currencyA.text = euroStr;
    // JPY
    double jpyValue = intValue * currencies.JPY;
    NSString *jpyStr = [NSString stringWithFormat:@"%.2f", jpyValue];
    self.currencyB.text = jpyStr;
    // BGN
    double bgnValue = intValue * currencies.BGN;
    NSString *bgnStr = [NSString stringWithFormat:@"%.2f", bgnValue];
    self.currencyC.text = bgnStr;
    
}


@end
