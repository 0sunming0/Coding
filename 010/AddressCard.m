//
//  AddressCard.m
//  010
//
//  Created by student on 15-1-27.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
@synthesize name,email;
//编码  存档
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:name forKey:@"NAME"];
    [aCoder encodeObject:email forKey:@"EMAIL"];
}
//解码  读档
- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self=[super init])
    {
        self.name=[aDecoder decodeObjectForKey:@"NAME"];
        self.email=[aDecoder decodeObjectForKey:@"EMAIL"];
    }
    return self;
}
-(id)initWithName:(NSString*)_n andEmail:(NSString*)_e
{
    if(self=[super init])
    {
        self.name=_n;
        self.email=_e;
    }
    return self;
}
-(NSString*)description
{
    return [NSString stringWithFormat:@"name=%@,email=%@",name,email];
}
-(void)dealloc
{
    //NSLog(@"析构");
    [name release];
    [email release];
    [super dealloc];
}
-(void)print:(id)na andE:(id)em
{
    NSLog(@"%@   %@",name,email);
}
@end
