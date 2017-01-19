//
//  JJProtocolManager.h
//  JJProtocolManager
//
//  Created by 王家俊 on 2017/1/19.
//  Copyright © 2017年 KEN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JJProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;

@end
