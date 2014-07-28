//
//  NSVersionedObject.m
//  
//
//  Created by Cameron Bell on 2014-07-12.
//
//

#import "MTLVersionedObject.h"

@interface MTLVersionedObject () {
	NSString *_version;
}

@end

@implementation MTLVersionedObject


-(id)init {
	if (self = [super init]) {
		_version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
    NSString *versionString = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    
    [encoder encodeObject:versionString forKey:@"_version"];
}


- (id)initWithCoder:(NSCoder *)decoder {
    if (self = [super init]) {
		_version = [decoder decodeObjectForKey:@"_version"];
    }
    return self;
}

-(NSString *)version {
	return _version;
}

-(void)setVersion:(NSString *)version {
	_version = version;
}
@end
