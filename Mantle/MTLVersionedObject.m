//
//  NSVersionedObject.m
//  
//
//  Created by Cameron Bell on 2014-07-12.
//
//

#import "MTLVersionedObject.h"

@implementation MTLVersionedObject


- (void)encodeWithCoder:(NSCoder *)encoder {
    NSString *versionString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    
    [encoder encodeObject:versionString forKey:@"_version"];
}


- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
        //NSLog(@"VERSION: %@ - %@",[decoder decodeObjectForKey:@"_version"],NSStringFromClass([self class]));
    }
    return self;
}
@end
