//
//  ViewController.m
//  ConfigDemo
//
//  Created by Randy Liu on 2017/6/29.
//  Copyright © 2017年 com.shenzhenetop.httptest. All rights reserved.
//

#import "ViewController.h"

#import "UIImageView+WebCache.h"

@interface ViewController ()
    @property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
#ifdef ConfigDemo_UAT_α
    
#define TestString @"ConfigDemo_UAT_α"
    
#elif ConfigDemo_UAT_β
    
#define TestString @"ConfigDemo_UAT_β"
    
#else //Release
    
#define TestString @"Release"
    
#endif
    
    NSLog(@"TestString:%@",TestString);
    
    // 打印结果分别为Release、ConfigDemo_UAT_α、ConfigDemo_UAT_β
    
    
    NSLog(@"%@ - %@",VariableA, VariableB);
    // ConfigDemo_UAT_α、ConfigDemo_UAT_β环境打印结果分别为
    // UAT_α.xcconfig_VariableA - UAT_α.xcconfig_VariableB
    // UAT_β.xcconfig_VariableA - UAT_β.xcconfig_VariableB
    
    [_imageView sd_setImageWithURL:[NSURL URLWithString:@"http://img.szjqz.com/image/real_face/8a3581bbce7e2fd0dc480a06dd1a571e.jpg"]];
}

@end
