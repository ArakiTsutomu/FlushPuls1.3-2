//
//  LevelSelect.m
//  FlushPuls3
//
//  Created by  荒木  12/09/20.
//  Copyright (c) 2012年. All rights reserved.
//

#import "LevelSelect.h"
#import "Flash.h"
#import <QuartzCore/QuartzCore.h>

Flash *flash;

@interface LevelSelect ()

@end

@implementation LevelSelect

@synthesize btn;
@synthesize kuma;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


//クリアしたらudを用意してそこに何かが入っていたらボタンの色が変わるようにする

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    flash.levelSelect = self;
    
    ud = [NSUserDefaults standardUserDefaults];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    level1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    level1.frame = CGRectMake(50, 150, 70, 50);
    [level1 setTitle:@"1" forState:UIControlStateNormal];
    [level1 addTarget:self
               action:@selector(lev1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:level1];
    
    level2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    level2.frame = CGRectMake(130, 150, 70, 50);
    [level2 setTitle:@"2" forState:UIControlStateNormal];
    [level2 addTarget:self
               action:@selector(lev2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:level2];
    
    level3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    level3.frame = CGRectMake(210, 150, 70, 50);
    [level3 setTitle:@"3" forState:UIControlStateNormal];
    [level3 addTarget:self
               action:@selector(lev3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:level3];
    
    level4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    level4.frame = CGRectMake(290, 150, 70, 50);
    [level4 setTitle:@"4" forState:UIControlStateNormal];
    [level4 addTarget:self
               action:@selector(lev4) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:level4];
    
    level5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    level5.frame = CGRectMake(370, 150, 70, 50);
    [level5 setTitle:@"5" forState:UIControlStateNormal];
    [level5 addTarget:self
               action:@selector(lev5) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:level5];
    
    }

//細かいレベル分け1
-(void)lev1{
    
    [level1 removeFromSuperview];
    [level2 removeFromSuperview];
    [level3 removeFromSuperview];
    [level4 removeFromSuperview];
    [level5 removeFromSuperview];
    
    
       NSString *titles[10] = {
        @"1-1",@"1-2", @"1-3", @"1-4", @"1-5", @"1-6", @"1-7", @"1-8", @"1-9", @"1-10"
    };
    
    posy = 50;
    int tate = 100;
    int addy = 80;
    int tag = 11;
    for (int i = 0; i<10; i++) {
         selBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [selBtn2 setFrame:CGRectMake(posy, tate, 70, 50)];
        [selBtn2 setTitle:titles[i] forState:UIControlStateNormal];
        [selBtn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [selBtn2 addTarget:self action:@selector(preStart:) forControlEvents:UIControlEventTouchUpInside];
        [selBtn2 setTag:tag];
        
        //ボタンに画像を入れる
        image = [UIImage imageNamed:@"1_1btn.png"];
        [selBtn2 setBackgroundImage:image forState:UIControlStateNormal];
        
        if (posy == 370) {
            posy = -30;
            tate += 100;
        }
        [self.view addSubview:selBtn2];
        
                posy += addy;
         tag++;
        NSLog(@"tag:%d",selBtn2.tag);
       
    }
    
    //[ud2 setInteger:1 forKey:@"1"];
}

//細かいレベルあげ2
-(void)lev2{
        
    [level1 removeFromSuperview];
    [level2 removeFromSuperview];
    [level3 removeFromSuperview];
    [level4 removeFromSuperview];
    [level5 removeFromSuperview];
    
    
    NSString *titles[10] = {
        @"2-1",@"2-2", @"2-3", @"2-4", @"2-5", @"2-6", @"2-7", @"2-8", @"2-9", @"2-10"
    };
    
    
    posy = 50;
    int tate = 100;
    int addy = 80;
    int tag = 21;
    for (int i = 0; i<10; i++) {
        selBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [selBtn2 setFrame:CGRectMake(posy, tate, 70, 50)];
        [selBtn2 setTitle:titles[i] forState:UIControlStateNormal];
        [selBtn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [selBtn2 addTarget:self action:@selector(preStart:) forControlEvents:UIControlEventTouchUpInside];
        [selBtn2 setTag:tag];
        
        //ボタンに画像を入れる
        image = [UIImage imageNamed:@"1_1btn.png"];
        [selBtn2 setBackgroundImage:image forState:UIControlStateNormal];
        
        if (posy == 370) {
            posy = -30;
            tate += 100;
        }
        [self.view addSubview:selBtn2];
        posy += addy;
        tag++;
        NSLog(@"tag:%d",selBtn2.tag);

    }

    
   // [ud2 setInteger:2 forKey:@"1"];

}

//細かいレベル分け3
-(void)lev3{
        
    [level1 removeFromSuperview];
    [level2 removeFromSuperview];
    [level3 removeFromSuperview];
    [level4 removeFromSuperview];
    [level5 removeFromSuperview];

    
    NSString *titles[10] = {
        @"3-1",@"3-2", @"3-3", @"3-4", @"3-5", @"3-6", @"3-7", @"3-8", @"3-9", @"3-10"
    };
    
    image = [UIImage imageNamed:@"1_1btn.png"];
    [selBtn2 setBackgroundImage:image
                       forState:UIControlStateNormal];
    
    posy = 50;
    int tate = 100;
    int addy = 80;
    int tag = 31;
    for (int i = 0; i<10; i++) {
        selBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [selBtn2 setFrame:CGRectMake(posy, tate, 70, 50)];
        [selBtn2 setTitle:titles[i] forState:UIControlStateNormal];
        [selBtn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [selBtn2 addTarget:self action:@selector(preStart:) forControlEvents:UIControlEventTouchUpInside];
        [selBtn2 setTag:tag];
        
        //ボタンに画像を入れる
        image = [UIImage imageNamed:@"1_1btn.png"];
        [selBtn2 setBackgroundImage:image forState:UIControlStateNormal];

        if (posy == 370) {
            posy = -30;
            tate += 100;
        }
        [self.view addSubview:selBtn2];
        posy += addy;
        tag++;
        NSLog(@"tag:%d",selBtn2.tag);

    }

}

//細かいレベル分け4
-(void)lev4{
    
    [level1 removeFromSuperview];
    [level2 removeFromSuperview];
    [level3 removeFromSuperview];
    [level4 removeFromSuperview];
    [level5 removeFromSuperview];
    
    NSString *titles[10] = {
        @"4-1",@"4-2", @"4-3", @"4-4", @"4-5", @"4-6", @"4-7", @"4-8", @"4-9", @"4-10"
    };
    
    
    posy = 50;
    int tate = 100;
    int addy = 80;
    int tag = 41;
    for (int i = 0; i<10; i++) {
        selBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [selBtn2 setFrame:CGRectMake(posy, tate, 70, 50)];
        [selBtn2 setTitle:titles[i] forState:UIControlStateNormal];
        [selBtn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [selBtn2 addTarget:self action:@selector(preStart:) forControlEvents:UIControlEventTouchUpInside];
        [selBtn2 setTag:tag];
        
        //ボタンに画像を入れる
        image = [UIImage imageNamed:@"1_1btn.png"];
        [selBtn2 setBackgroundImage:image forState:UIControlStateNormal];

        if (posy == 370) {
            posy = -30;
            tate += 100;
        }
        [self.view addSubview:selBtn2];
        posy += addy;
        tag++;
        NSLog(@"tag:%d",selBtn2.tag);

    }

}

//細かいレベル分け5
-(void)lev5{        
    
    [level1 removeFromSuperview];
    [level2 removeFromSuperview];
    [level3 removeFromSuperview];
    [level4 removeFromSuperview];
    [level5 removeFromSuperview];
    
    NSString *titles[10] = {
        @"5-1",@"5-2", @"5-3", @"5-4", @"5-5", @"5-6", @"5-7", @"5-8", @"5-9", @"5-10"
    };
    
    
    posy = 50;
    int tate = 100;
    int addy = 80;
    int tag = 51;
    for (int i = 0; i<10; i++) {
        selBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [selBtn2 setFrame:CGRectMake(posy, tate, 70, 50)];
        [selBtn2 setTitle:titles[i] forState:UIControlStateNormal];
        [selBtn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [selBtn2 addTarget:self action:@selector(preStart:) forControlEvents:UIControlEventTouchUpInside];
        [selBtn2 setTag:tag];
        
        //ボタンに画像を入れる
        image = [UIImage imageNamed:@"1_1btn.png"];
        [selBtn2 setBackgroundImage:image forState:UIControlStateNormal];

        if (posy == 370) {
            posy = -30;
            tate += 100;
        }
        [self.view addSubview:selBtn2];
        posy += addy;
        tag++;
        NSLog(@"tag:%d",selBtn2.tag);

    }
    
    
}

//始まる前の画面
-(void)preStart:(id)sender{
        
    if ([sender tag] == 11 ) {
        [ud setInteger:11 forKey:@"level"];
    }else if([sender tag] == 12) {
        [ud setInteger:12 forKey:@"level"];
    }else if([sender tag] == 13) {
        [ud setInteger:13 forKey:@"level"];
    }else if([sender tag] == 14) {
        [ud setInteger:14 forKey:@"level"];
    }else if([sender tag] == 15) {
        [ud setInteger:15 forKey:@"level"];
    }else if([sender tag] == 16) {
        [ud setInteger:16 forKey:@"level"];
    }else if([sender tag] == 17) {
        [ud setInteger:17 forKey:@"level"];
    }else if([sender tag] == 18) {
        [ud setInteger:18 forKey:@"level"];
    }else if([sender tag] == 19) {
        [ud setInteger:19 forKey:@"level"];
    }else if([sender tag] == 20) {
        [ud setInteger:20 forKey:@"level"];
        
    //level2
    }else if([sender tag] == 21){
        [ud setInteger:21 forKey:@"level"];
    }else if([sender tag] == 22) {
        [ud setInteger:22 forKey:@"level"];
    }else if([sender tag] == 23) {
        [ud setInteger:23 forKey:@"level"];
    }else if([sender tag] == 24) {
        [ud setInteger:24 forKey:@"level"];
    }else if([sender tag] == 25) {
        [ud setInteger:25 forKey:@"level"];
    }else if([sender tag] == 26) {
        [ud setInteger:26 forKey:@"level"];
    }else if([sender tag] == 27) {
        [ud setInteger:27 forKey:@"level"];
    }else if([sender tag] == 28) {
        [ud setInteger:28 forKey:@"level"];
    }else if([sender tag] == 29) {
        [ud setInteger:29 forKey:@"level"];
    }else if([sender tag] == 30) {
        [ud setInteger:30 forKey:@"level"];
        
    //level3
    }else if([sender tag] == 31){
        [ud setInteger:31 forKey:@"level"];
    }else if([sender tag] == 32) {
        [ud setInteger:32 forKey:@"level"];
    }else if([sender tag] == 33) {
        [ud setInteger:33 forKey:@"level"];
    }else if([sender tag] == 34) {
        [ud setInteger:34 forKey:@"level"];
    }else if([sender tag] == 35) {
        [ud setInteger:35 forKey:@"level"];
    }else if([sender tag] == 36) {
        [ud setInteger:36 forKey:@"level"];
    }else if([sender tag] == 37) {
        [ud setInteger:37 forKey:@"level"];
    }else if([sender tag] == 38) {
        [ud setInteger:38 forKey:@"level"];
    }else if([sender tag] == 39) {
        [ud setInteger:39 forKey:@"level"];
    }else if([sender tag] == 40) {
        [ud setInteger:40 forKey:@"level"];
        
    //level4
    }else if([sender tag] == 41){
        [ud setInteger:41 forKey:@"level"];
    }else if([sender tag] == 42) {
        [ud setInteger:42 forKey:@"level"];
    }else if([sender tag] == 43) {
        [ud setInteger:43 forKey:@"level"];
    }else if([sender tag] == 44) {
        [ud setInteger:44 forKey:@"level"];
    }else if([sender tag] == 45) {
        [ud setInteger:45 forKey:@"level"];
    }else if([sender tag] == 46) {
        [ud setInteger:46 forKey:@"level"];
    }else if([sender tag] == 47) {
        [ud setInteger:47 forKey:@"level"];
    }else if([sender tag] == 48) {
        [ud setInteger:48 forKey:@"level"];
    }else if([sender tag] == 49) {
        [ud setInteger:49 forKey:@"level"];
    }else if([sender tag] == 50) {
        [ud setInteger:50 forKey:@"level"];
        
    //level5
    }else if([sender tag] == 51){
        [ud setInteger:51 forKey:@"level"];
    }else if([sender tag] == 52) {
        [ud setInteger:52 forKey:@"level"];
    }else if([sender tag] == 53) {
        [ud setInteger:53 forKey:@"level"];
    }else if([sender tag] == 54) {
        [ud setInteger:54 forKey:@"level"];
    }else if([sender tag] == 55) {
        [ud setInteger:55 forKey:@"level"];
    }else if([sender tag] == 56) {
        [ud setInteger:56 forKey:@"level"];
    }else if([sender tag] == 57) {
        [ud setInteger:57 forKey:@"level"];
    }else if([sender tag] == 58) {
        [ud setInteger:58 forKey:@"level"];
    }else if([sender tag] == 59) {
        [ud setInteger:59 forKey:@"level"];
    }else if([sender tag] == 60) {
        [ud setInteger:60 forKey:@"level"];
    }
    
    //ゲームが始まる前の画面
    preStartBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    preStartBtn.frame = self.view.bounds;
    [preStartBtn.layer setCornerRadius:10.0];
    [[preStartBtn layer] setCornerRadius:8.0f];
    [[preStartBtn layer] setMasksToBounds:YES];
    [[preStartBtn layer] setBorderWidth:1.0f];
    [[preStartBtn layer] setBackgroundColor:
     [[UIColor blackColor] CGColor]];
    
    [preStartBtn setTitle:@"画面を一度タッチすると始まります" forState:UIControlStateNormal];
    [preStartBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [preStartBtn addTarget:self
                        action:@selector(flashh:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:preStartBtn];
}

//数字の出る画面
-(void)flashh:(UIButton *)sender{
    flash = [[Flash alloc] initWithNibName:@"Flash" bundle:nil];
    flash.finalLevel = sender.tag;
    flash.view.frame = self.view.bounds;
    [self.view addSubview:flash.view];
}

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
}


-(void)dealloc{
    [super dealloc];
    [flash release];
}

@end
