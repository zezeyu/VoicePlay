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
///内容
@property(nonatomic,strong)NSArray * speechStrings;
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
        _voices = @[[AVSpeechSynthesisVoice voiceWithLanguage:@"zh-CN"],[AVSpeechSynthesisVoice voiceWithLanguage:@"en-GB"],[AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"]];
        _speechStrings = [self bulidSpeechStrings];
    }
    return self;
}

-(NSArray *)bulidSpeechStrings{
    return @[@"hello！",
             @"帝高阳之苗裔兮，朕皇考曰伯庸。",
             @"摄提贞于孟陬兮，惟庚寅吾以降。",
             @"皇览揆余初度兮，肇锡余以嘉名：",
             @"名余曰正则兮，字余曰灵均。",
             @"纷吾既有此内美兮，又重之以修能。",
             ];
}

-(void)beginConversation{
    for (int i = 0; i < self.speechStrings.count; i++) {
        ///生成AVSpeechUtterance 实例，传递字符串
        AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:self.speechStrings[i]];
        
        ///在预定义的2个声音之间做切换
        //        utterance.voice = self.voices[i % 2];
        
        ///播放语言内容速度
        utterance.rate = 0.4f;
        
        ///语调
        utterance.pitchMultiplier = 0.8f;
        
        ///在说下一句话前的停顿时长
        utterance.postUtteranceDelay = 0.1f;
        
        ///开始语言播放
        [self.synthesizer speakUtterance:utterance];
        
    }
    
}






















@end


