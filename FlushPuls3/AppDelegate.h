//
//  AppDelegate.h
//  FlushPuls3
//
//  Created by  荒木 力 on 12/09/20.
//  Copyright (c) 2012年  荒木 力. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Menu.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    UIWindow *window;
    Menu *menu;
    
}

@property (strong, nonatomic) UIWindow *window;

@end
