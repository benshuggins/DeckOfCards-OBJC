//
//  DVMCardViewController.m
//  DeckOfOneCardObjC
//
//  Created by Ben Huggins on 2/12/19.
//  Copyright © 2019 User. All rights reserved.
//

#import "DVMCardViewController.h"
#import "DVMCardController.h"
#import "DVMCards.h"



@interface DVMCardViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;
@property (weak, nonatomic) IBOutlet UILabel *suitLabel;


@end

@implementation DVMCardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (IBAction)drawCardButtonTapped:(id)sender {
    
    [self updateViews];
}
-(void)updateViews
{
    [[DVMCardController sharedController] drawNewCard:1 completion:^(NSArray<DVMCards *> *  cards, NSError *error) {
        if (error) {
            NSLog(@"Error getting photo references for %@ on %@:", cards, error);
            return;
        }
       
        DVMCards *card = [cards objectAtIndex:0];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.suitLabel.text = card.suit;
        });
        [[DVMCardController sharedController] fetchCardImage:card completion:^(UIImage *image, NSError *error) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                self.cardImageView.image = image;
            });
        }];
        
        
    }];
}



@end
