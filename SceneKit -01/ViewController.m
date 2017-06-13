//
//  ViewController.m
//  SceneKit -01
//
//  Created by ShiWen on 2017/6/13.
//  Copyright © 2017年 ShiWen. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic,strong) SCNView *scenView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.scenView];
    
}

-(SCNView*)scenView{
    if (!_scenView) {
        _scenView = [[SCNView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
        _scenView.center = self.view.center;
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"yizi" withExtension:@"dae"];
        _scenView.scene = [SCNScene sceneWithURL:url options:nil error:nil];
        _scenView.backgroundColor = [UIColor blackColor];
        //开启可交互
        _scenView.allowsCameraControl = YES;
        
    }
    return _scenView;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
