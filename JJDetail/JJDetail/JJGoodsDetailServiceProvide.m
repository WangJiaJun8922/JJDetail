//
//  JJGoodsDetailServiceProvide.m
//  JJDetail
//
//  Created by 王家俊 on 2017/1/19.
//  Copyright © 2017年 KEN. All rights reserved.
//

#import "JJGoodsDetailServiceProvide.h"
#import <JJDetailServiceProtocol/JJDetailServiceProtocol.h>
#import <JJProtocolManager/JJProtocolManager.h>

#import "JJGoodsDetailViewController.h"

@interface JJGoodsDetailServiceProvide () <JJDetailServiceProtocol>

@end

@implementation JJGoodsDetailServiceProvide

+ (void)load
{
    [JJProtocolManager registServiceProvide:[self new] forProtocol:@protocol(JJDetailServiceProtocol)];
}

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString *)goodsId goodsName:(NSString *)goodsName
{
    JJGoodsDetailViewController *goodsDetailVc = [[JJGoodsDetailViewController alloc] initWithGoodsId:goodsId goodsName:goodsName];
    return goodsDetailVc;
}

@end
