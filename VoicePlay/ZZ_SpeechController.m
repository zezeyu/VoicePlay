//
//  ZZ_SpeechController.m
//  VoicePlay
//
//  Created by 何泽的mac on 2018/4/22.
//  Copyright © 2018年 何泽的mac. All rights reserved.
//

#import "ZZ_SpeechController.h"

@interface ZZ_SpeechController ()
///声音
@property(nonatomic,strong)NSArray * voices;

@end

@implementation ZZ_SpeechController

+(instancetype)speechController{
    return [[self alloc]init];
}

-(id)init{
    self = [super init];
    if (self) {
        ///实际化
        _synthesizer =[[AVSpeechSynthesizer alloc]init];
        
        ///声音内容  zh-CN 中文 en-US英文
        _voices = @[[AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"],[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"]];
    }
    return self;
}

-(void)beginConversation:(NSString *)speech{
    ///生成AVSpeechUtterance 实例，传递字符串
    AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:speech];
    
    ///在预定义的2个声音之间做切换
    //        utterance.voice = self.voices[i % 2];
    
    ///播放语言内容速度
    utterance.rate = 0.4f;
    
    ///语调
    utterance.pitchMultiplier = 0.8f;
    
    ///在说下一句话前的停顿时长
    utterance.postUtteranceDelay = 0.1f;
    //控制：
    ///开始语言播放
    [self.synthesizer speakUtterance:utterance];
}






















@end


