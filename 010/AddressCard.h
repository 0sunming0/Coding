//
//  AddressCard.h
//  010
//
//  Created by student on 15-1-27.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject<NSCoding>
{
    NSString * name;
    NSString* email;
}
@property(nonatomic,retain)NSString * name;
@property(nonatomic,retain)NSString* email;
-(id)initWithName:(NSString*)_n andEmail:(NSString*)_e;

@end
