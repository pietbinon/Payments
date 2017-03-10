//
//  ApplePaymentService.m
//  Payments
//
//  Created by Pierre Binon on 2017-03-10.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ApplePaymentService.h"



@implementation ApplePaymentService

- (BOOL) canProcessPayment {
    
    NSInteger random = arc4random_uniform(2);
    
    if (random == 0)
        return NO;
    else
        return YES;
}


- (void) processPaymentAmountThroughProtocol: (NSInteger) amount {
    
    NSLog (@"Thank you for choosing Apple for your payment needs today. Your total amount today is $%ld and is now being processed", (long)amount);
}


- (void) transactionComplete {
    
//    //This line was used when trying to return a string from this method
//    return [NSString stringWithFormat: @"Your transaction is now complete. Thank you and have an excellent day!"];
    
    NSLog (@"Your transaction is now complete. Thank you and have an excellent day!");
}

@end
