//
//  PaymentGateway.h
//  Payments
//
//  Created by Pierre Binon on 2017-03-10.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PaymentDelegate <NSObject>

@required
- (void) processPaymentAmountThroughProtocol: (NSInteger) amount;
- (BOOL) canProcessPayment;

//Added an optional method in protocol
@optional
-(void) transactionComplete;

@end



@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate>delegate;

- (void) processPaymentAmount: (NSInteger) purchaseAmount;

@end
