//
//  main.m
//  Payments
//
//  Created by Pierre Binon on 2017-03-10.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSInteger randomAmount = arc4random_uniform(900) + 100;
        
        NSLog (@"Thank you for shopping at Acme.com.\nYour total today is $%ld.\nPlease select your payment method:\n1. Paypal (enter 1)\n2. Stripe (enter 2)\n3. Amazon (enter 3)\n4. Apple (enter 4)", (long)randomAmount);
        
        char inputChars[255];
        fgets(inputChars, 255, stdin);
        NSString *inputString = [NSString stringWithUTF8String: inputChars];
        
//        //The following next 2 lines do the same thing as the previous line
//        NSString *inputString = [[NSString alloc] initWithUTF8String: inputChars];
//        NSString *inputString = [NSString stringWithCString: inputChars encoding: NSUTF8StringEncoding];
        
        NSString *input = [inputString stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSInteger inputInteger = [input integerValue];
        
        NSLog (@"Your total today is $%ld.You will be now redirected to the payment site", (long)randomAmount);
        
        PaymentGateway *gateway = [PaymentGateway new];
//        [gateway processPaymentAmount: randomAmount];
        
        PaypalPaymentService *paypal = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [[AmazonPaymentService alloc] init];
        ApplePaymentService *apple = [ApplePaymentService new];
        
        switch (inputInteger) {
            case 1:
                gateway.delegate = paypal;
                break;
            case 2:
                gateway.delegate = stripe;
                break;
            case 3:
                gateway.delegate = amazon;
                break;
            case 4:
                gateway.delegate = apple;
                break;
        }
        
        [gateway processPaymentAmount: randomAmount];

    }
    return 0;
}
