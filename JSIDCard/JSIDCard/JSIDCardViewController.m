//
//  JSIDCardViewController.m
//  JinFu
//
//  Created by ccj on 2017/9/12.
//
//

#import "JSIDCardViewController.h"
#import <JSCardInfo_Category/CTMediator+JSCardInfo.h>
//#import <MGBaseKit/MGBaseKit.h>
//#import "MGIDCard/MGIDCard.h"
//#import "FaceIDNetAPI.h"
//#import "JSIDCardInfoViewController.h"
//#import "JSIDCardRequest.h"
//#import "JSImageBaseStringTools.h"
//#import "JSFileUploadCashLoanRequest.h"
//#import "JSFileUploadBatchCashLoanRequest.h"
//#import "UIImage+Extension.h"
//#import "FYUserChip.h"

@interface JSIDCardViewController ()
//@property (strong, nonatomic) UIImageView *frontCardView;
//@property (strong, nonatomic) UIImageView *backCardView;
//@property (strong, nonatomic) UIButton *button;
//@property (strong, nonatomic) UILabel *label;
//@property (strong, nonatomic) UIImageView *frontBackGroundView;
//@property (strong, nonatomic) UIImageView *flowBackGroundView;
//@property (strong, nonatomic) UIButton *frontButton;
//@property (strong, nonatomic) UIButton *backButton;
//@property (strong, nonatomic) UILabel *frontLabel;
//@property (strong, nonatomic) UILabel *backLabel;
//@property (strong, nonatomic) UIImage *frontImage;
//@property (strong, nonatomic) UIImage *backImage;
//
//@property (strong, nonatomic) JSIDCardRequest *IDCardRequest;
//@property (nonatomic, strong) JSFileUploadCashLoanRequest *uploadLoanRequest;
//@property (nonatomic, strong) JSFileUploadBatchCashLoanRequest *fileUploadBatchRequest;
//@property (nonatomic, strong) NSString *applySerialNo;

//@property (nonatomic, strong) FYUserChip *userChip;
@end

@implementation JSIDCardViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewController *viewController = [[CTMediator sharedInstance] JSCardInfo_JSCardInfoViewControllerWithContentText:@"牛气"];
    viewController.view.backgroundColor = [UIColor redColor];
    [self.navigationController pushViewController:viewController animated:YES];
}

//- (instancetype)initWithUserChip:(FYUserChip *)usrChip{
//    self = [super init];
//    if (self) {
//        _userChip = usrChip;
//        if ([_userChip.sourceChannel isEqualToString:@"02"]) {
//            _userChip.channel = @"03";
//        }
//    }
//    return self;
//}

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    self.edgesForExtendedLayout = UIRectEdgeNone;
//    self.extendedLayoutIncludesOpaqueBars = YES;
//    self.title = @"第一步:身份验证";
//    [MGIDCardManager licenseForNetWokrFinish:^(bool License) {
//        if (License) {
//            NSLog(@"身份证检测授权成功");
//        } else {
//            NSLog(@"身份证检测授权失败");
//        }
//    }];
//
//    [self.view addSubview:self.frontCardView];
//    [self.view addSubview:self.backCardView];
//    [self.view addSubview:self.button];
//    [self.view addSubview:self.label];
//
//    int number = (SCREEN_WIDTH - 50) / 320 * 190;
//    [self.frontCardView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view.mas_top).offset(64);
//        make.left.equalTo(self.view.mas_left).offset(25);
//        make.right.equalTo(self.view.mas_right).offset(-25);
//        make.height.equalTo(@(number));
//    }];
//    [self.backCardView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.frontCardView.mas_bottom).offset(30);
//        make.left.equalTo(self.view.mas_left).offset(25);
//        make.right.equalTo(self.view.mas_right).offset(-25);
//        make.height.equalTo(self.frontCardView.mas_height);
//    }];
//    [self.button mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.bottom.equalTo(self.view.mas_bottom).offset(-20);
//        make.top.equalTo(self.backCardView.mas_bottom).offset(44 *CJAdaptHeightY);
//        make.left.equalTo(self.view.mas_left).offset(30);
//        make.right.equalTo(self.view.mas_right).offset(-30);
//        make.height.equalTo(@43);
//    }];
//
//    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view.mas_top).offset(22);
//        make.left.equalTo(self.view.mas_left).offset(30);
//        make.right.equalTo(self.view.mas_right).offset(-30);
//        //        make.height.equalTo(@50);
//    }];
//
//    [self addFrontBackViews];
//    [self addFlowBackViews];
//
//    UIBarButtonItem *backItem = [UIBarButtonItem itemWithImage:@"fanhuijiantou" highImage:@"" target:self action:@selector(backClick)];
//
//    UIBarButtonItem *saveItem = [UIBarButtonItem itemWithImage:@"criss_cross" highImage:@"" target:self action:@selector(saveClick)];
//
//    // 把导航栏右侧的对象添加时,直接放到数组中或者直接赋值就可
//    self.navigationItem.leftBarButtonItems = @[backItem, saveItem];
//
//
//}
//
//- (void)backClick{
//    [self.navigationController popViewControllerAnimated:YES];
//}
//
//- (void)saveClick{
//    [JSPromptView promptTitle:@""
//                      message:@"是否确定要退出申请流程"
//                      actions:@[[JSPromptAction actionWithTitle:@"确定"
//                                                     titleColor:[UIColor c1]
//                                                        handler:^(JSPromptAction *action) {
//                                                            [self.navigationController popViewControllerAnimated:YES];
//                                                        }],
//                                [JSPromptAction actionWithTitle:@"取消"
//                                                        handler:^(JSPromptAction *action) {
//
//                                                        }]]];
//}
//
//- (void)saveIDCardImage{
//    // NSData *frontImagedata = UIImageJPEGRepresentation(self.frontImage 1.0f);
//    // NSData *backImagesdata = UIImageJPEGRepresentation(self.backImage, 1.0f);
//    // self.frontImages = frontImagedata;
//    // self.backImages = backImagesdata;
//
////    [self.navigationController popViewControllerAnimated:YES];
////    self.frontImages = self.frontImage;
////    self.backImages = self.backImage;
//}
//
//- (void)addFrontBackViews{
//    [self.frontCardView addSubview:self.frontBackGroundView];
//    [self.frontCardView addSubview:self.frontButton];
//    [self.frontCardView addSubview:self.frontLabel];
//
//    [self.frontBackGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.top.equalTo(self.frontCardView.mas_top).offset(15);
//        make.centerY.equalTo(self.frontCardView.mas_centerY);
//        make.centerX.equalTo(self.frontCardView.mas_centerX);
//        make.width.equalTo(@(204));
//        make.height.equalTo(@(127));
//    }];
//
//    [self.frontButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.frontBackGroundView.mas_centerX);
//        make.centerY.equalTo(self.frontBackGroundView.mas_centerY);
//        make.width.equalTo(@(56));
//        make.height.equalTo(@(42));
//    }];
//
//    [self.frontLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.frontCardView.mas_centerX);
//        make.bottom.equalTo(self.frontCardView.mas_bottom).offset(-10);
//    }];
//
//}
//
//- (void)addFlowBackViews{
//    [self.backCardView addSubview:self.flowBackGroundView];
//    [self.backCardView addSubview:self.backButton];
//    [self.backCardView addSubview:self.backLabel];
//
//    [self.flowBackGroundView mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.top.equalTo(self.backCardView.mas_top).offset(15);
//        make.centerY.equalTo(self.backCardView.mas_centerY);
//        make.centerX.equalTo(self.backCardView.mas_centerX);
//        make.width.equalTo(@(204));
//        make.height.equalTo(@(127));
//    }];
//
//    [self.backButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.flowBackGroundView.mas_centerX);
//        make.centerY.equalTo(self.flowBackGroundView.mas_centerY);
//        make.width.equalTo(@(56));
//        make.height.equalTo(@(42));
//    }];
//
//    [self.backLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.equalTo(self.backCardView.mas_centerX);
//        make.bottom.equalTo(self.backCardView.mas_bottom).offset(-10);
//    }];
//
//}
//
//- (void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    self.view.backgroundColor = [UIColor whiteColor];
//    [self.frontButton setSelected:NO];
//    [self.backButton setSelected:NO];
//
//    if (self.frontImages) {
//        self.frontCardView.image = self.frontImages;
//    }
//    if (self.backImages) {
//        self.backCardView.image = self.backImages;
//    }
//}
//- (UIImageView *)frontCardView {
//    if (!_frontCardView) {
//        _frontCardView = [[UIImageView alloc] init];
//        _frontCardView.backgroundColor = [UIColor b3];
//        //        _frontCardView.image = [UIImage imageNamed:@"idcard_bg_front@2x"];
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGestureRecognizer:)];
//        [_frontCardView addGestureRecognizer:tapGesture];
//        _frontCardView.userInteractionEnabled = YES;
//    }
//    return _frontCardView;
//}
//
//- (UIImageView *)backCardView {
//    if (!_backCardView) {
//        _backCardView = [[UIImageView alloc] init];
//        _backCardView.backgroundColor = [UIColor b3];
//        //        _backCardView.image = [UIImage imageNamed:@"idcard_bg_back@2x"];
//        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGestureRecognizer:)];
//        [_backCardView addGestureRecognizer:tapGesture];
//        _backCardView.userInteractionEnabled = YES;
//    }
//    return _backCardView;
//}
//
//- (UIButton *)button {
//    if (!_button) {
//        _button = [UIButton buttonWithType:UIButtonTypeCustom];
//        _button.titleLabel.font = [UIFont t2];
//        [_button setTitleColor:[UIColor c8]
//                      forState:UIControlStateNormal];
//        [_button setTitle:@"下一步"
//                 forState:UIControlStateNormal];
//        [_button setBackgroundImage:[UIImage imageNamed:@"img_lpq"]
//                           forState:UIControlStateNormal];
//        [_button setBackgroundImage:[[UIImage imageNamed:@"img_lpq"] grayImage]
//                           forState:UIControlStateDisabled];
//        [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
//        _button.clipsToBounds = YES;
//        _button.layer.cornerRadius = COMMIT_BUTTON_HEIGHT / 2.0;
//    }
//    return _button;
//}
//
//- (UILabel *)label{
//    if (!_label) {
//        _label = [[UILabel alloc] init];
//        _label.text = @"请按要求清晰拍摄本人真实身份证";
//        _label.textAlignment = NSTextAlignmentCenter;
//        _label.textColor = [UIColor c5];
//    }
//    return _label;
//}
//
//- (UILabel *)frontLabel{
//    if (!_frontLabel) {
//        _frontLabel = [[UILabel alloc] init];
//        _frontLabel.text = @"上传身份证正面";
//        _frontLabel.textAlignment = NSTextAlignmentCenter;
//        _frontLabel.textColor = [UIColor c5];
//    }
//    return _frontLabel;
//}
//
//- (UILabel *)backLabel{
//    if (!_backLabel) {
//        _backLabel = [[UILabel alloc] init];
//        _backLabel.text = @"上传身份证反面";
//        _backLabel.textAlignment = NSTextAlignmentCenter;
//        _backLabel.textColor = [UIColor c5];
//    }
//    return _backLabel;
//}
//- (UIImageView *)frontBackGroundView{
//    if (!_frontBackGroundView) {
//        _frontBackGroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Group 6"]];
//    }
//    return _frontBackGroundView;
//}
//
//-(UIImageView *)flowBackGroundView{
//    if (!_flowBackGroundView) {
//        _flowBackGroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Group 7"]];
//    }
//    return _flowBackGroundView;
//}
//- (UIButton *)frontButton {
//    if (!_frontButton) {
//        _frontButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_frontButton setBackgroundImage:[UIImage imageNamed:@"Combined Shape "] forState:UIControlStateNormal];
//        [_frontButton setBackgroundImage:[UIImage imageNamed:@"Combined Shape 点击状态"] forState:UIControlStateSelected];
//        [_frontButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
//    }
//    return _frontButton;
//}
//
//- (UIButton *)backButton {
//    if (!_backButton) {
//        _backButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_backButton setBackgroundImage:[UIImage imageNamed:@"Combined Shape "] forState:UIControlStateNormal];
//        [_backButton setBackgroundImage:[UIImage imageNamed:@"Combined Shape 点击状态"] forState:UIControlStateSelected];
//        [_backButton addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
//    }
//    return _backButton;
//}
//
//- (JSIDCardRequest *)IDCardRequest{
//    if (!_IDCardRequest) {
//        _IDCardRequest = [[JSIDCardRequest alloc] init];
//    }
//    return _IDCardRequest;
//}
//
//- (void)handleGestureRecognizer:(UIGestureRecognizer *)sender {
//    __unsafe_unretained JSIDCardViewController *weakSelf = self;
//    BOOL idcard = [MGIDCardManager getLicense];
//
//    if (!idcard) {
//        [[[UIAlertView alloc] initWithTitle:@"提示" message:@"SDK授权失败，请检查" delegate:self cancelButtonTitle:@"完成" otherButtonTitles:nil, nil] show];
//        return;
//    }
//
//    MGIDCardManager *cardManager = [[MGIDCardManager alloc] init];
//
//    if ([sender.view isEqual:self.frontCardView]) {
//
//        [self.frontButton setSelected:YES];
//        [cardManager IDCardStartDetection:self IdCardSide:IDCARD_SIDE_FRONT finish:^(MGIDCardModel *model) {
//            weakSelf.frontCardView.image = [model croppedImageOfIDCard];
//            weakSelf.frontImage = [model croppedImageOfIDCard];
//            [weakSelf.frontLabel removeFromSuperview];
//            [weakSelf.frontBackGroundView removeFromSuperview];
//            [weakSelf.frontButton removeFromSuperview];
//            [self uploadImageWithfrontImage:weakSelf.frontImage];
//        } errr:^(MGIDCardError errorType) {
//            weakSelf.frontCardView.image = nil;
//            weakSelf.frontImage = nil;
//            [self addFrontBackViews];
//        }];
//
//    } else if ([sender.view isEqual:self.backCardView]) {
//
//        [self.backButton setSelected:YES];
//        [cardManager IDCardStartDetection:self IdCardSide:IDCARD_SIDE_BACK finish:^(MGIDCardModel *model) {
//            weakSelf.backCardView.image = [model croppedImageOfIDCard];
//            weakSelf.backImage = [model croppedImageOfIDCard];
//            [weakSelf.backLabel removeFromSuperview];
//            [weakSelf.flowBackGroundView removeFromSuperview];
//            [weakSelf.backButton removeFromSuperview];
//            [self uploadImageWithbackImage:weakSelf.backImage];
//        } errr:^(MGIDCardError errorType) {
//            weakSelf.backCardView.image = nil;
//            weakSelf.backImage = nil;
//            [self addFlowBackViews];
//        }];
//
//    }
//
//}
//
//- (void)buttonPressed:(id)sender {
//
//    if ([sender isEqual:self.button]) {
//        if (!self.frontImage || !self.backImage) {
//            [[[UIAlertView alloc] initWithTitle:@"提示" message:@"请上传身份证照片" delegate:self cancelButtonTitle:@"完成" otherButtonTitles:nil, nil] show];
//
//            return;
//        }
//        [JSProgressHUD show];
//
//        self.IDCardRequest.frontPhoto = [JSImageBaseStringTools imageToBase64StringWithImage:self.frontCardView.image];
//        self.IDCardRequest.backPhoto = [JSImageBaseStringTools imageToBase64StringWithImage:self.backCardView.image];
//        self.IDCardRequest.sourceChannel = self.entranceChannel;
//        if (self.userChip.chipNo || self.userChip.sourceChannel) {
//            self.IDCardRequest.idcard = self.userChip.idCard;
//            self.IDCardRequest.faid = self.userChip.faid;
//            self.IDCardRequest.projectId = self.userChip.projectId;
//            self.IDCardRequest.chipNo = self.userChip.chipNo;
//            self.IDCardRequest.sourceChannel = self.userChip.sourceChannel;
//        }
//
//        [self.IDCardRequest requestSuccess:^(id responseTask) {
//
//            int statusCode = [responseTask[@"statusCode"] intValue];
//            [JSProgressHUD dismiss];
//            if (statusCode == 0) {
//                if (self.userChip.idCard.length > 0) {
//                    // 认筹与身份证信息为同一人
//                    if ([self.userChip.idCard isEqualToString:responseTask[@"idCardNumber"]]) {
//                        JSIDCardInfoViewController *idCardInfoVC = [[JSIDCardInfoViewController alloc] init];
//                        idCardInfoVC.cardInfo = responseTask;
//                        idCardInfoVC.frontImage = self.frontImage;
//                        idCardInfoVC.backImage = self.backImage;
//                        idCardInfoVC.userChip = self.userChip;
//                        [self.navigationController pushViewController:idCardInfoVC animated:YES];
//                    }else{
//                        // 提示信息待确定
//                        [JSMessageHUD showMessage:@"身份不匹配, 请重新扫描身份证"];
//                    }
//                }else{
//                    JSIDCardInfoViewController *idCardInfoVC = [[JSIDCardInfoViewController alloc] init];
//                    idCardInfoVC.cardInfo = responseTask;
//                    idCardInfoVC.frontImage = self.frontImage;
//                    idCardInfoVC.backImage = self.backImage;
//                    idCardInfoVC.userChip = self.userChip;
//                    [self.navigationController pushViewController:idCardInfoVC animated:YES];
//                }
//
//
//            }else if(statusCode == 1){
//                [JSMessageHUD showMessage:@"非正式身份证且非临时身份证"];
//            }else if (statusCode == 2){
//                [JSMessageHUD showMessage:@"身份证已过期"];
//            }else if (statusCode == 3){
//                [JSMessageHUD showMessage:@"身份证有效期格式识别有误"];
//            }
//
//        } failure:^(id errorInfo) {
//
//            [JSProgressHUD dismiss];
//            if ([errorInfo isKindOfClass:[NSString class]] && [errorInfo isEqualToString:@"-100"]) {
//                [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_SHOULD_LOGIN object:nil];
//            } else {
//                if ([errorInfo isKindOfClass:[NSDictionary class]]) {
//                    [JSMessageHUD showMessage:errorInfo[@"statusMessage"]];
//                }
//            }
//        }];
//
//    }else if ([sender isEqual:self.frontButton]){
//        [self.frontButton setSelected:YES];
//
//        __unsafe_unretained JSIDCardViewController *weakSelf = self;
//        BOOL idcard = [MGIDCardManager getLicense];
//
//        if (!idcard) {
//            [[[UIAlertView alloc] initWithTitle:@"提示" message:@"SDK授权失败，请检查" delegate:self cancelButtonTitle:@"完成" otherButtonTitles:nil, nil] show];
//            return;
//        }
//
//        MGIDCardManager *cardManager = [[MGIDCardManager alloc] init];
//
//        [cardManager IDCardStartDetection:self IdCardSide:IDCARD_SIDE_FRONT finish:^(MGIDCardModel *model) {
//            weakSelf.frontCardView.image = [model croppedImageOfIDCard];
//            weakSelf.frontImage = [model croppedImageOfIDCard];
//            [weakSelf.frontLabel removeFromSuperview];
//            [weakSelf.frontBackGroundView removeFromSuperview];
//            [weakSelf.frontButton removeFromSuperview];
////            [self uploadImageWithfrontImage:weakSelf.frontImage];
//        } errr:^(MGIDCardError errorType) {
//            weakSelf.frontCardView.image = nil;
//            weakSelf.frontImage = nil;
//            [self addFrontBackViews];
//        }];
//
//    }else if ([sender isEqual:self.backButton]){
//        [self.backButton setSelected:YES];
//
//        __unsafe_unretained JSIDCardViewController *weakSelf = self;
//        BOOL idcard = [MGIDCardManager getLicense];
//
//        if (!idcard) {
//            [[[UIAlertView alloc] initWithTitle:@"提示" message:@"SDK授权失败，请检查" delegate:self cancelButtonTitle:@"完成" otherButtonTitles:nil, nil] show];
//            return;
//        }
//
//        MGIDCardManager *cardManager = [[MGIDCardManager alloc] init];
//
//        [cardManager IDCardStartDetection:self IdCardSide:IDCARD_SIDE_BACK finish:^(MGIDCardModel *model) {
//            weakSelf.backCardView.image = [model croppedImageOfIDCard];
//            weakSelf.backImage = [model croppedImageOfIDCard];
//            [weakSelf.backLabel removeFromSuperview];
//            [weakSelf.flowBackGroundView removeFromSuperview];
//            [weakSelf.backButton removeFromSuperview];
////            [self uploadImageWithbackImage:weakSelf.backImage];
//        } errr:^(MGIDCardError errorType) {
//            weakSelf.backCardView.image = nil;
//            weakSelf.backImage = nil;
//            [self addFlowBackViews];
//        }];
//
//    }
//}
//
//- (JSFileUploadCashLoanRequest *)uploadLoanRequest{
//    if (!_uploadLoanRequest){
//        _uploadLoanRequest = [[JSFileUploadCashLoanRequest alloc] init];
//        _uploadLoanRequest.channel = self.userChip.channel;
//    }
//    return _uploadLoanRequest;
//}
//
//- (JSFileUploadBatchCashLoanRequest *)fileUploadBatchRequest {
//    if (!_fileUploadBatchRequest) {
//        _fileUploadBatchRequest = [[JSFileUploadBatchCashLoanRequest alloc] init];
//        _fileUploadBatchRequest.applySerialNo = self.applySerialNo;
//        _fileUploadBatchRequest.channel = self.userChip.channel;
//    }
//    return _fileUploadBatchRequest;
//}


- (void)uploadImageWithfrontImage:(UIImage *)image{
    
//    self.uploadLoanRequest.applySerialNo = self.applySerialNo;
//    self.uploadLoanRequest.docType = @"B0011101";
//    self.uploadLoanRequest.fileFormat = @"jpg";
//    self.uploadLoanRequest.fileStream = [JSImageBaseStringTools imageToBase64StringWithImage:image];
//        if (self.userChip.chipNo || self.userChip.sourceChannel) {
//            self.uploadLoanRequest.idcard = self.userChip.idCard;
//            self.uploadLoanRequest.chipNo = self.userChip.chipNo;
//            self.uploadLoanRequest.faid = self.userChip.faid;
//            self.uploadLoanRequest.projectId = self.userChip.projectId;
//        }
//    [self.uploadLoanRequest requestSuccess:^(id responseTask) {
//
//    } failure:^(id errorInfo) {
//        if ([errorInfo isKindOfClass:[NSDictionary class]]) {
//            [JSMessageHUD showMessage:errorInfo[@"statusMessage"]];
//        }
//    }];
    
//    NSString *docType = @"B0011101";
//    NSArray *images = [NSArray arrayWithObjects:image, nil];
//    
//    [self uploadImages:images docType:docType completed:^(NSArray<JSFileInfo *> *resultFiles) {
//
//    }];
    
}

- (void)uploadImageWithbackImage:(UIImage *)image{
    //    self.uploadLoanRequest.applySerialNo = self.applySerialNo;
    
//    self.uploadLoanRequest.docType = @"B0011102";
//    self.uploadLoanRequest.fileFormat = @"jpg";
//    self.uploadLoanRequest.fileStream = [JSImageBaseStringTools imageToBase64StringWithImage:image];
//    if (self.userChip.chipNo || self.userChip.sourceChannel) {
//        self.uploadLoanRequest.idcard = self.userChip.idCard;
//        self.uploadLoanRequest.chipNo = self.userChip.chipNo;
//        self.uploadLoanRequest.faid = self.userChip.faid;
//        self.uploadLoanRequest.projectId = self.userChip.projectId;
//    }
//    [self.uploadLoanRequest requestSuccess:^(id responseTask) {
//        
//    } failure:^(id errorInfo) {
//        if ([errorInfo isKindOfClass:[NSDictionary class]]) {
//            [JSMessageHUD showMessage:errorInfo[@"statusMessage"]];
//        }
//    }];
    
    
    
//    NSString *docType = @"B0011102";
//    NSArray *images = [NSArray arrayWithObjects:image, nil];
//
//    [self uploadImages:images docType:docType completed:^(NSArray<JSFileInfo *> *resultFiles) {
//
//    }];
    
}


//- (void)uploadImages:(NSArray<UIImage *> *)images docType:(NSString *)docType completed:(void (^)(NSArray<JSFileInfo *> *))completed{
//    
//    if (self.userChip.chipNo || self.userChip.sourceChannel) {
//        self.fileUploadBatchRequest.chipNo = self.userChip.chipNo;
//        self.fileUploadBatchRequest.faid = self.userChip.faid;
//        self.fileUploadBatchRequest.projectId = self.userChip.projectId;
//        self.fileUploadBatchRequest.idcard = self.userChip.idCard;
//    }
//    [self.fileUploadBatchRequest uploadFiles:images docType:docType completed:completed];
//}

@end

