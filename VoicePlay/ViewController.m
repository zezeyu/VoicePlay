//
//  ViewController.m
//  VoicePlay
//
//  Created by 何泽的mac on 2018/4/22.
//  Copyright © 2018年 何泽的mac. All rights reserved.
//

#import "ViewController.h"
#import "ZZ_SpeechController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *speechTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

///播放
- (IBAction)ClickOnThePlayAction:(UIButton *)sender {
    [[ZZ_SpeechController speechController] beginConversation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
