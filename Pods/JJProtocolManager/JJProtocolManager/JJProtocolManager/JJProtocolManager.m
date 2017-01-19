//
//  JJProtocolManager.m
//  JJProtocolManager
//
//  Created by 王家俊 on 2017/1/19.
//  Copyright © 2017年 KEN. All rights reserved.
//

#import "JJProtocolManager.h"

@interface JJProtocolManager()

@property (nonatomic, strong) NSMutableDictionary *serviceProvideSource;

@end

@implementation JJProtocolManager

+ (JJProtocolManager *)sharedInstance
{
    static JJProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc] init];
    }
    return self;
}

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
}

+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}
@end
