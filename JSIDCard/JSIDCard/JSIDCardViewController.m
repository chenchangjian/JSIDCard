//
//  JSIDCardViewController.m
//  JinFu
//
//  Created by ccj on 2017/9/12.
//
//

#import "JSIDCardViewController.h"
#import <JSCardInfo_Category/CTMediator+JSCardInfo.h>

@interface JSIDCardViewController ()
@property (nonatomic, strong) NSString *usrChip;
@end

@implementation JSIDCardViewController

- (instancetype)initWithUserChip:(NSString *)usrChip {
    self = [super init];
    if (self) {
        _usrChip = usrChip;
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 100)];
        [btn setTitle:usrChip forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(gotoCardInfoVC1) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    return self;
}

- (void)viewDidLoad{
    self.view.backgroundColor= [UIColor whiteColor];
    if (self.usrChip.length == 0) {
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 100)];
        [btn setTitle:@"gotoCardInfoVC" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(gotoCardInfoVC) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

- (void)gotoCardInfoVC {
    UIViewController *viewController = [[CTMediator sharedInstance] JSCardInfo_JSCardInfoViewControllerWithContentText:@"im from idcardVC"];
    viewController.view.backgroundColor = [UIColor redColor];
//    [self.navigationController pushViewController:viewController animated:YES];
    [self presentViewController:viewController animated:YES completion:nil];
}

- (void)gotoCardInfoVC1{
    UIViewController *viewController = [[CTMediator sharedInstance] JSCardInfo_JSCardInfoViewControllerWithContentText:self.usrChip];
    viewController.view.backgroundColor = [UIColor redColor];
    [self presentViewController:viewController animated:YES completion:nil];
}

@end

