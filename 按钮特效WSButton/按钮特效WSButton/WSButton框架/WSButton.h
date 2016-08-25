//
//  WSButton.h
//  按钮特效WSButton
//
//  Created by iMac on 16/8/25.
//  Copyright © 2016年 sinfotek. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^finishBlock)();

@interface WSButton : UIView

@property (nonatomic,copy) finishBlock translateBlock;

@end
