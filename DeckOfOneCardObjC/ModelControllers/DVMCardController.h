//
//  DVMCardController.h
//  DeckOfOneCardObjC
//
//  Created by Ben Huggins on 2/12/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class DVMCards;

NS_ASSUME_NONNULL_BEGIN

@interface DVMCardController : NSObject


+(instancetype)sharedController;
        //draw card declaration
- (void)drawNewCard:(NSInteger)numberOfCards completion:(void(^)
(NSArray<DVMCards *> *cards, NSError *error))completion;

- (void)fetchCardImage:(DVMCards *)card completion:(void(^) (UIImage *image,
            NSError *error))compltion;


@end

NS_ASSUME_NONNULL_END
