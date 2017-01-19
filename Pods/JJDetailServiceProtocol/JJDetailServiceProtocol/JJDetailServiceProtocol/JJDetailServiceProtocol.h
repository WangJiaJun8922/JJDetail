//
//  JJDetailServiceProtocol.h
//  JJDetailServiceProtocol
//
//  Created by 王家俊 on 2017/1/19.
//  Copyright © 2017年 KEN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol JJDetailServiceProtocol <NSObject>

@required;

- (UIViewController *)goodsDetailViewControllerWithGoodsId:(NSString*)goodsId goodsName:(NSString *)goodsName;

@end
