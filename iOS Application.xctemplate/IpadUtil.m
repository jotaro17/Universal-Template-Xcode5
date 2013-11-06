
#ifdef UI_USER_INTERFACE_IDIOM
#define IS_IPAD() (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#else
#define IS_IPAD() (false)
#endif

#import "IpadUtil.h"

@implementation IpadUtil

+ (BOOL)isIpad {
    if (IS_IPAD()) {
        return YES;
    }
    return NO;
}

+ (CGFloat)getFontModifier {
	if (IS_IPAD()) {
		return 2;
	}
	else {
		return 1.0;
	}
}

@end
