//
//  DVMCards.h
//  DeckOfOneCardObjC
//
//  Created by Ben Huggins on 2/12/19.
//  Copyright © 2019 User. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DVMCards : NSObject

@property (nonatomic, readonly, copy) NSString *suit;
@property (nonatomic, readonly, copy) NSString *image;

-(instancetype)initWithSuit:(NSString *)suit image:(NSString *)image;

-(instancetype)initWithDictionary:(NSDictionary <NSString *, id>* )dictionary; //may be (string, any)


@end

NS_ASSUME_NONNULL_END
