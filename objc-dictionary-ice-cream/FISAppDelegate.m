//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your custom method bodies here.
 
 */

-(NSArray*) namesForIceCream:(NSString*)iceCream
{
    NSLog(@"Names for iceCream method will run");
    NSDictionary *nameAndIceCream = @{
        @"Joe"    : @"Peanut Butter and Chocolate",
        @"Tim"    : @"Natural Vanilla"            ,
        @"Sophie" : @"Mexican Chocolate"          ,
        @"Deniz"  : @"Natural Vanilla"            ,
        @"Tom"    : @"Mexican Chocolate"          ,
        @"Jim"    : @"Natural Vanilla"            ,
        @"Mark"   : @"Cookies 'n Cream"
    };
    NSMutableArray *names = [[NSMutableArray alloc]init];
    //created a mutable array called names which is what I will return at the end of the method
    NSArray *everyKey = [nameAndIceCream allKeys];
    //Then I created an Array to store all my eyes from the dictionary into this array
    for (NSString *key in everyKey) {
        //Now I iterate over this array called everyKey using the NSString key
        if ([nameAndIceCream[key] isEqualToString: iceCream])
            //And I set up a condition that if the keys are equal to the inputted ice cream from the test then return true and just be careful not to use everyKey because you need to use nameAndIceCream so that you can get the corresponding values from the keys
        {
            //NSArray* keys = [nameAndIceCream allKeys];
            //NSLog(@"This will be all the name in the array: %@",key);
            
            [names addObject:key];
            //And if true then go ahead and add that particular key into the mutable array called names which will my return item
        
            //NSLog(@"This will be all the contents of the array: %@", names);
        }
    }
        
    return names;
}//then return names, which is the mutable array that we stored in all the keys that have the similar values 
-(NSDictionary*)countsOfIceCream: (NSDictionary*)iceCreamByName
{
    NSMutableDictionary* newNameAndIceCream = [[NSMutableDictionary alloc]init];
    
    for (NSString* key in iceCreamByName){
        
        NSString* iceCream = iceCreamByName[key];
        //So basically to call upon the values of the previous dictionary we are using whatever dictionary name[key]
        
        NSArray* names = [self namesForIceCream:iceCream];
        //Then use the method to call upon on the other portion of the dicitonary to get the values
        
        //we have to then reverse the key and value because now the key will become the value and the value will become the key, so ice cream flavors will become the key and the people's name will become the value but use the the count instead of the names of the people
        
        NSNumber* peopleCount = @([names count]);
        //Before putting the count of the people into the array you first have to make that integer value into an object so that you can putting it in another object, dictionary in this case
        
        newNameAndIceCream[iceCream] = peopleCount;
        //And then go ahead and put that into a new dictionary that will contain the ice cream flavors but for the new value will contain the number of people that like it.
    }
    return newNameAndIceCream;
}
@end
