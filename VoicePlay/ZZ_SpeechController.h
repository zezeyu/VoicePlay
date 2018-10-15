//
//  ZZ_SpeechController.h
//  VoicePlay
//
//  Created by 何泽的mac on 2018/4/22.
//  Copyright © 2018年 何泽的mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
@interface ZZ_SpeechController : NSObject

@property(strong,nonatomic,readonly) AVSpeechSynthesizer * synthesizer;

///类方法 开辟空间
+(instancetype)speechController;
///开始播放文本
-(void)beginConversation:(NSString *)speech;

@end

