//
//  RaygunEnvironmentMessage.m
//  Raygun4iOS
//
//  Created by Mitchell Duncan on 11/09/17.
//  Copyright © 2017 Mindscape. All rights reserved.
//

#import "RaygunEnvironmentMessage.h"

@implementation RaygunEnvironmentMessage

@synthesize processorCount     = _processorCount;
@synthesize oSVersion          = _oSVersion;
@synthesize model              = _model;
@synthesize windowsBoundWidth  = _windowsBoundWidth;
@synthesize windowsBoundHeight = _windowsBoundHeight;
@synthesize resolutionScale    = _resolutionScale;
@synthesize cpu                = _cpu;
@synthesize utcOffset          = _utcOffset;
@synthesize locale             = _locale;
@synthesize kernelVersion      = _kernelVersion;
@synthesize jailBroken         = _jailBroken;
@synthesize memoryFree         = _memoryFree;
@synthesize memorySize         = _memorySize;


-(NSDictionary *)convertToDictionary {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    
    if (_processorCount) {
        dict[@"processorCount"] = _processorCount;
    }
    
    if (_oSVersion) {
        dict[@"oSVersion"] = _oSVersion;
    }
    
    if (_model) {
        dict[@"model"] = _model;
    }
    
    if (_windowsBoundWidth) {
        dict[@"windowBoundsWidth"] = _windowsBoundWidth;
    }
    
    if (_windowsBoundHeight) {
        dict[@"windowBoundsHeight"] = _windowsBoundHeight;
    }
    
    if (_resolutionScale) {
        dict[@"resolutionScale"] = _resolutionScale;
    }
    
    if (_cpu) {
        dict[@"cpu"] = _cpu;
    }
    
    if (_utcOffset) {
        dict[@"utcOffset"] = _utcOffset;
    }
    
    if (_locale) {
        dict[@"locale"] = _locale;
    }
    
    if (_kernelVersion) {
        dict[@"kernelVersion"] = _kernelVersion;
    }
    
    if (_memorySize) {
        dict[@"totalPhysicalMemory"] = _memorySize;
    }
    
    if (_memoryFree) {
        dict[@"availablePhysicalMemory"] = _memoryFree;
    }
    
    dict[@"rooted"] = _jailBroken?@YES:@NO;
    
    return dict;
}

@end