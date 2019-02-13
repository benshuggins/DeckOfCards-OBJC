//
//  DVMCards.m
//  DeckOfOneCardObjC
//
//  Created by Ben Huggins on 2/12/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "DVMCards.h"

@implementation DVMCards

-(instancetype)initWithSuit:(NSString *)suit image:(NSString *)image;
{
    self = [super init];
    if (self) {
        _suit = suit;
        _image = image;
        
    }
    return self;
}
//notice we return initWithSuit inside of initWithDictinary!!!!

-(instancetype)initWithDictionary:(NSDictionary<NSString *,id> *)dictionary
{
    NSString *suit = dictionary[@"suit"];
    NSString *image = dictionary[@"image"];
    
    return [self initWithSuit:suit image:image];
}

@end
