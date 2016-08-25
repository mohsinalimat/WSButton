# WSButton
封装按钮，带特效的按钮，点击转圈的按钮， 简单一行代码搞定

# PhotoShoot
![image](https://github.com/Zws-China/WSButton/blob/master/%E6%8C%89%E9%92%AE%E7%89%B9%E6%95%88WSButton/%E6%8C%89%E9%92%AE%E7%89%B9%E6%95%88WSButton/123.gif)

# How To Use
1.导入文件夹WSButton框架，在所需要的类中#import "WSButton.h"

2.WSButton *wsBtn = [[WSButton alloc]initWithFrame:CGRectMake( 30, 100, 200, 40)];
[self.view addSubview:wsBtn];

wsBtn.translateBlock = ^{
NSLog(@"处理按钮事件");


};

