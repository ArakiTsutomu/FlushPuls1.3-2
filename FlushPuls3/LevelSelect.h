//
//  LevelSelect.h
//  FlushPuls3
//
//  Created by  荒木 力 on 12/09/20.
//  Copyright (c) 2012年  荒木 力. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LevelSelect : UINavigationController{
    
    
    UIButton *level1;
    UIButton *level2;
    UIButton *level3;
    UIButton *level4;
    UIButton *level5;
    
    UIButton *level1_1;
    UIButton *level1_2;
    UIButton *level1_3;
    UIButton *level1_4;
    UIButton *level1_5;

    UIButton *level2_1;
    UIButton *level2_2;
    UIButton *level2_3;
    UIButton *level2_4;
    UIButton *level2_5;
    
    UIButton *level3_1;
    UIButton *level3_2;
    UIButton *level3_3;
    UIButton *level3_4;
    UIButton *level3_5;
    
    UIButton *level4_1;
    UIButton *level4_2;
    UIButton *level4_3;
    UIButton *level4_4;
    UIButton *level4_5;
    
    UIButton *level5_1;
    UIButton *level5_2;
    UIButton *level5_3;
    UIButton *level5_4;
    UIButton *level5_5;
    
    UIButton *preStartBtn;
    
    NSUserDefaults *ud;
    NSUserDefaults *ud2;
    int posy;
    
    UIButton *selBtn2;
    int kuma;
    
    
    UIImage *image;
}

@property (nonatomic, retain) UIButton *btn;
@property (nonatomic) int kuma;

-(void)preStart:(id)sener;

@end
