//  FISAppDelegate.h

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 
 * Write your custom method names here.
 
 */

-(NSArray*) namesForIceCream: (NSString*)iceCream;
-(NSDictionary*)countsOfIceCream: (NSDictionary*)iceCreamByName;

@end

