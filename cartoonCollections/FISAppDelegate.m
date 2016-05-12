//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 *  Define your method implementations here.
 
 */

- (NSString*) stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {

    NSMutableString *expectedRollCall = [[NSMutableString alloc] init]; //take array of dwarf names and create string

    NSUInteger lastDwarf = [dwarfs count] - 1;  //1 is moved to 0 place

    for (NSUInteger i = 0; i < [dwarfs count]; i++) {   //setting count loop
    
    [expectedRollCall appendFormat:@"%lu. %@", i + 1, dwarfs[i]];  //append integer to dwarfs
    
    if (i < lastDwarf) {
        [expectedRollCall appendString:@" | "];  //append pipe to dwarf
    }
}

    return expectedRollCall;

}

- (NSArray*) arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    
    NSMutableArray *powersAsShouts = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < powers.count; i++) { //setting count loop
        
        NSString *power = powers[i]; //adding string value to integer count
        
        NSString *uPowers = [power uppercaseString]; //convert to uppercase
        
        NSString *uPowersAsShouts = [uPowers stringByAppendingString:@"!"]; //add exclamation point
        
        [powersAsShouts addObject:uPowersAsShouts]; //add uppercase and exclamation point to array
    }
    
    return powersAsShouts;
}

- (NSString*) summonCaptainPlanetWithPowers:(NSArray *)powers {
    
    NSMutableString *summonCP = [[NSMutableString alloc] init]; //create empty string
    
    [summonCP appendString:@"Let our powers combine:"]; //append string with phrase "Let our powers combine:"
    
    NSArray *powersAsShouts = [self arrayOfPlaneteerShoutsFromArray:powers]; //calling previous method - calls all elements in previous method
    
    for (NSUInteger i = 0; i < powersAsShouts.count; i++) {  //setting count loop
        
        NSString *pCombine = powersAsShouts[i]; //adding string value to integer count
        
        [summonCP appendFormat:@"\n%@", pCombine]; //adds new line for each string in array
    }
    
    [summonCP appendString:@"\nGo Planet!"]; // phrase "Go Planet!" added to mutable string
    
    return summonCP;
}

- (NSString*) firstPremiumCheeseInStock:(NSArray *)cheesesInStock
                     premiumCheeseNames:(NSArray *)premiumCheeseNames {
    
    for (NSUInteger i = 0; i < premiumCheeseNames.count; i++) {
        
        NSString *premiumCheese = premiumCheeseNames [i];
        
        if ([cheesesInStock containsObject:premiumCheese]) {
            
            return premiumCheese;
        }
    }
    
    
    return @"No premium cheeses in stock.";
}

- (NSArray*) arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneybags {
    
    NSMutableArray *paperBills = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < moneybags.count; i++) {
    
    NSString *mBag = moneybags[i];
    
    NSUInteger mBagLength = [mBag length];
    
    NSString *pBill = [NSString stringWithFormat:@"$%lu", mBagLength];
                      
                      [paperBills addObject:pBill];
    }

    return paperBills;
}



@end
