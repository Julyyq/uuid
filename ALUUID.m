//
//  ALUUID.m
//  Scratch
//
//  Created by Allen.Young on 1/9/14.
//  Copyright (c) 2014 Allen.Young. All rights reserved.
//

#import "ALUUID.h"

@implementation ALUUID

+(NSString*)UUID {
    CFUUIDRef uuid = CFUUIDCreate(kCFAllocatorDefault);
    NSString *uuidString = (__bridge_transfer NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuid);
    CFRelease(uuid);
    
    return uuidString;
}

@end
