//
//  main.m
//  010
//
//  Created by student on 15-1-27.
//  Copyright (c) 2015年 student. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressCardCategory.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        AddressCard * card=[[AddressCard alloc]initWithName:@"Tom" andEmail:@"123@xina"];
        [NSKeyedArchiver archiveRootObject:card toFile:@"1.txt"];
        AddressCard * card2=[NSKeyedUnarchiver unarchiveObjectWithFile:@"1.txt"];
       NSLog(@"card2:%@    %@",card2.name,card.email);
        NSLog(@"card :%@    %@",card.name,card.email);
        NSLog(@"%@",card);
       //[card uppercaseName];
        
        
        
        [NSKeyedArchiver archiveRootObject:card toFile:@"/tmp/AddressCard.txt"];
        NSData * date=[NSData dataWithContentsOfFile:@"/tmp/AddressCard.txt"];
        [date writeToFile:@"/tmp/AddressCard2.txt" atomically:YES];
        AddressCard * card4=[NSKeyedUnarchiver unarchiveObjectWithFile:@"/tmp/AddressCard2.txt"];
        NSLog(@"card4:%@",card4);
        
        
        //[card release];
        
        NSFileManager * fm=[NSFileManager defaultManager];
        NSDictionary * dic=[fm attributesOfItemAtPath:@"/tmp/AddressCard2.txt" error:nil];
        id value = [dic objectForKey:NSFileSize];
        if([value isKindOfClass:[NSNumber class]])
        {
            NSLog(@"%@",value);
        }
       // NSLog(@"%@",dic);
        //获取指定路径下文件的内容
        NSData * data=[fm contentsAtPath:@"/tmp/AddressCard2.txt"];
        AddressCard * card7=[NSKeyedUnarchiver unarchiveObjectWithData:data];
        NSLog(@"%@",card7);
        //使用指定的内容创建文件
        [fm createFileAtPath:@"/tmp/AddressCard6.txt" contents:data attributes:nil];
        AddressCard * card6=[NSKeyedUnarchiver unarchiveObjectWithFile:@"/tmp/AddressCard6.txt"];
        NSLog(@"card6:%@",card6);
        
    }
    return 0;
}

