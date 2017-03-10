//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Pierre Binon on 2017-03-10.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "AmazonPaymentService.h"



@implementation AmazonPaymentService

- (BOOL) canProcessPayment {
    
    NSInteger random = arc4random_uniform(2);
    
    if (random == 0)
        return NO;
    else
        return YES;
}


- (void) processPaymentAmountThroughProtocol: (NSInteger) amount {
    
    NSLog (@"Thank you for choosing Amazon for your payment needs today. Your total amount today is $%ld and is now being processed", (long)amount);
}


@end
