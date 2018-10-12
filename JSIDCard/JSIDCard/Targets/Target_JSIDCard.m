//
//  Target_JSIDCard.m
//  JSIDCard
//
//  Created by ccj on 2018/10/10.
//  Copyright © 2018年 ccj. All rights reserved.
//

#import "Target_JSIDCard.h"
#import "JSIDCardViewController.h"

@implementation Target_JSIDCard
- (UIViewController *)Action_JSIDCardViewController:(NSDictionary *)params{
//    JSIDCardViewController *idcardVC = [[JSIDCardViewController alloc] initWithUserChip:params[@"userChip"]];
    JSIDCardViewController *idcardVC = [[JSIDCardViewController alloc] init];
    return idcardVC;
}
@end
