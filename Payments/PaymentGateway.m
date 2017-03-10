//
//  PaymentGateway.m
//  Payments
//
//  Created by Pierre Binon on 2017-03-10.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "PaymentGateway.h"



@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) purchaseAmount {
    
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmountThroughProtocol: purchaseAmount];
        if ([self.delegate respondsToSelector: @selector(transactionComplete)]) {
            [self.delegate transactionComplete];
        }
    } else
        NSLog (@"We are sorry but the payment site is currently unavailable and cannot process your payment at this time");
}

@end
