//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Pierre Binon on 2017-03-10.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "PaypalPaymentService.h"



@implementation PaypalPaymentService

- (BOOL) canProcessPayment {
    
    NSInteger random = arc4random_uniform(2);
    
    if (random == 0)
        return NO;
    else
        return YES;
}


- (void) processPaymentAmountThroughProtocol: (NSInteger) amount {
    
    NSLog (@"Thank you for choosing Paypal for your payment needs today. Your total amount today is $%ld and is now being processed", (long)amount);
}


- (void) transactionComplete {
    
//=====================THESE LINES WERE USED WHEN TRYING TO RETURN A STRING FROM THE METHOD==========================
//    //The following two lines do the same as the line that follows...
//    NSString *transactionString = [NSString stringWithFormat: @"Your transaction is now complete. Have an excellent day!"];
//    return transactionString;
//    
//    return [NSString stringWithFormat: @"Your transaction is now complete. Thank you and have an excellent day!"];
//==================================================================================================================
    
    NSLog (@"Your transaction is now complete. Thank you and have an excellent day!");
}

@end
