//
//  SocketConfigData.m
//  PushClientSDK
//
//  Created by jeasonyoung on 2017/2/17.
//  Copyright © 2017年 Murphy. All rights reserved.
//

#import "SocketConfigData.h"
#import "NSString+ExtTools.h"

static NSString * const PARAMS_SERVER = @"serverIP";
static NSString * const PARAMS_PORT   = @"port";
static NSString * const PARAMS_RATE   = @"rate";
static NSString * const PARAMS_TIMES  = @"times";
static NSString * const PARAMS_RECONNECT = @"reconnect";

//实现
@implementation SocketConfigData

#pragma mark -- 初始化数据
-(void)initialConfigWithDict:(NSDictionary *)dict{
    if(!dict || !dict.count) return;
    _server = dict[PARAMS_SERVER];//1.socket服务器IP
    _port = [dict[PARAMS_PORT] integerValue];//2.socket服务器端口
    _rate = [dict[PARAMS_RATE] integerValue];//3.socket心跳间隔(秒)
    _times = [dict[PARAMS_TIMES] integerValue];//4.socket丢失心跳间隔次数
    _reconnect = [dict[PARAMS_RECONNECT] integerValue];//5.socket重连间隔
}

@end