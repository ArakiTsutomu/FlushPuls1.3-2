//
//  Flash.h
//  FlushPuls3
//
//  Created by  荒木 力 on 12/09/20.
//  Copyright (c) 2012年  荒木 力. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LevelSelect.h"

@interface Flash : UIViewController{
    UILabel *label;
    LevelSelect *levelSelect;
    
    int ran1;
    NSString *getRun1;
    
    int ran2;
    NSString *getRun2;
    
    int ran3;
    NSString *getRun3;
    
    int ran4;
    NSString *getRun4;
    
    int ran5;
    NSString *getRun5;

    int randCount;
    
    NSUserDefaults *ud;
    int levelSelectUd;
    int resultUd;
    
    NSTimer *tim;
    
    int total;
    NSString *totalText;
    
    UITextField *textf;
    int answer;
    
    UILabel *ansLbl;
    
    UIButton *returnBtn;
    UIButton *againBtn;
    
}

@property (nonatomic, retain) LevelSelect *levelSelect;
@property (nonatomic) int finalLevel;


@end
