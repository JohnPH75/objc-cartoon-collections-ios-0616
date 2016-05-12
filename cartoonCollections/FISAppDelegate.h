//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Declare your methods here.
 
 */

- (NSString*) stringByRollCallingDwarfsInArray: (NSArray*) dwarfs;

- (NSArray*) arrayOfPlaneteerShoutsFromArray: (NSArray*) powers;

- (NSString*) summonCaptainPlanetWithPowers: (NSArray*) powers;

- (NSString*) firstPremiumCheeseInStock:(NSArray*)cheesesInStock
                     premiumCheeseNames:(NSArray*)premiumCheeseNames;   //firstPremiumCheeseInStock:premiumCheeseNames: that takes two NSArray arguments called cheesesInStock and premiumCheeseNames, and returns an NSString
                            //(NSString*) only written once.

- (NSArray*) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray*) moneybags;



@end