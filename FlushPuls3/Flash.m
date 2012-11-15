//
//  Flash.m
//  FlushPuls3
//
//  Created by  荒木 力 on 12/09/20.
//  Copyright (c) 2012年  荒木 力. All rights reserved.
//

#import "Flash.h"
#import "LevelSelect.h"

LevelSelect *levelSelect;

@interface Flash ()

@end

@implementation Flash

@synthesize levelSelect;
@synthesize finalLevel = _finalLevel;
//
//- (int)finalLevel
//{
//    return _finalLevel;
//}
//
//- (void)setFinalLevel:(int)finalLevel
//{
//    self.finalLevel = finalLevel;
//}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor blackColor];
    
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(120, 100, 300, 100)];
    label.text = @"READY";
    label.backgroundColor = [UIColor blackColor];
    label.textColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:70];
    label.textAlignment = UITextAlignmentCenter;
    [self.view addSubview:label];

    [self performSelector:@selector(don) withObject:nil afterDelay:1.0f];

    [self performSelector:@selector(timer) withObject:nil afterDelay:1.0];
    
    ud = [NSUserDefaults standardUserDefaults];
       
    randCount = 0;
    
    levelSelectUd = [ud integerForKey:@"level"];
    resultUd = [ud integerForKey:@"result"];
    NSLog(@"kuma2222:%d", levelSelectUd);
    
}


//labelにGOと表示した後labelをremoveする。
-(void)don{
    label.text = @"GO!";
    [self performSelector:@selector(rmove)
               withObject:nil afterDelay:0.7];
}

-(void)rmove{
    [label removeFromSuperview];
}

-(void)timer{
    tim = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                           target:self selector:@selector(random)
                                         userInfo:nil
                                          repeats:YES];
}

-(void)timer2{
    tim = [NSTimer scheduledTimerWithTimeInterval:0.7f
                                           target:self
                                         selector:@selector(random) userInfo:nil
                                          repeats:YES];
}


//問題の桁数を決める
-(void)random{
    label.font = [UIFont systemFontOfSize:80];
    ran1 = 1 + arc4random() %9;
    getRun1 = [NSString stringWithFormat:@"%d" ,ran1];
    
    ran2 = 1 + arc4random() %99;
    getRun2 = [NSString stringWithFormat:@"%d" , ran2];
    [label setText:getRun2];
    
    
    ///////////////Level1///////////////////
       if (levelSelectUd == 11) {
        if (randCount >= 5) {
            [tim invalidate];
            [self textField];
            [ud setInteger:11 forKey:@"result"];
        }else{
            
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
           
       }else if (levelSelectUd == 12){
           if (randCount >= 8) {
               [tim invalidate];
               [self textField];
           }else{
               [label setText:getRun1];
               [label sizeToFit];
               total += ran1;
               randCount++;
               
               
               //数字をランダムに表示する
               CGPoint point;
               point.x = 200;
               point.y = 300;
               
               int w2 = label.frame.size.width / 2;
               int h2 = label.frame.size.height / 2;
               srandom(time(NULL));
               int x = rand() % (480 - w2);
               int y = rand() % (320 - h2 * 2) + h2;
               if ( w2 > x ) {
                   x = w2;
               }
//               if ( h2 > y ) {
//                   y = h2;
//               }
               
               label.center = CGPointMake(x, y);
               [self.view addSubview:label];
               
               [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
           }
       
       }else if (levelSelectUd == 13){
           if (randCount >= 10) {
               [tim invalidate];
               [self textField];
        }else{
           [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
       }
    
    }else if (levelSelectUd == 14){
        if (randCount >= 13) {
            [tim invalidate];
            [self textField];
        }else{
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
        
    }else if (levelSelectUd == 15){
        if (randCount >= 17) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 16){
        if (randCount >= 20) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 17){
        if (randCount >= 23) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 18){
        if (randCount >= 25) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 19){
        if (randCount >= 27) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 20){
        if (randCount >= 30) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
        
    ////////////////////Level2/////////////////////
    }else if (levelSelectUd == 21){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 22){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 23){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 24){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 25){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 26){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 27){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 28){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 29){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 30){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }

//////////////Level3///////////////
    }else if (levelSelectUd == 31){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 32){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 33){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 34){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 35){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 36){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 37){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 38){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 39){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 40){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
        
        
///////////////Level4//////////////////
    }else if (levelSelectUd == 41){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 42){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 43){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 44){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 45){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 46){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 47){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 48){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 49){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 50){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
        
/////////////////Level5////////////////////////
    }else if (levelSelectUd == 51){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 52){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 53){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 54){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 55){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 56){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 57){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 58){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 59){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }else if (levelSelectUd == 60){
        if (randCount >= 8) {
            [tim invalidate];
            [self textField];
        }else{
            [label setText:getRun1];
            total += ran1;
            randCount++;
            [self.view addSubview:label];
            [self performSelector:@selector(labelRemove) withObject:nil afterDelay:0.8f];
        }
    }
}

-(void)textField{
    textf = [[UITextField alloc] initWithFrame:CGRectMake(150, 90, 200, 30)];
    [textf setBorderStyle:UITextBorderStyleRoundedRect];
    [textf setPlaceholder:@"Answer"];
    [self.view addSubview:textf];
    [label removeFromSuperview];    
    [textf addTarget:self action:@selector(ans) forControlEvents:UIControlEventEditingDidEndOnExit];
    
    }

-(void)ans{
    [textf release];
    answer = [textf.text intValue];
    if (answer == total) {
        ansLbl = [[UILabel alloc] init];
        ansLbl.backgroundColor = [UIColor blackColor];
        ansLbl.frame = self.view.bounds;
        ansLbl.text = @"◎";
        ansLbl.textAlignment = UITextAlignmentCenter;
        ansLbl.textColor = [UIColor redColor];
        ansLbl.font = [UIFont systemFontOfSize:200];
        [self.view addSubview:ansLbl];
        
        //次に行くボタン
        againBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        againBtn.frame = CGRectMake(50, 250, 100, 50);
        [againBtn setTitle:@"選択画面" forState:UIControlStateNormal];
        [againBtn addTarget:self
                     action:@selector(again) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:againBtn];
        
        
    }else{
        ansLbl = [[UILabel alloc] init];
        ansLbl.backgroundColor = [UIColor blackColor];
        ansLbl.frame = self.view.bounds;
        ansLbl.text = @"×";
        ansLbl.textAlignment = UITextAlignmentCenter;
        ansLbl.textColor = [UIColor blueColor];
        ansLbl.font = [UIFont systemFontOfSize:200];
        [self.view addSubview:ansLbl];
        
        //もう一度ボタン
        againBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        againBtn.frame = CGRectMake(50, 250, 100, 50);
        [againBtn setTitle:@"もう一度" forState:UIControlStateNormal];
        [againBtn addTarget:self
                     action:@selector(again) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:againBtn];
        
    }
}

//
-(void)labelRemove{
    [label removeFromSuperview];
  //  [self performSelector:@selector(labelAdd) withObject:nil afterDelay:0.6];
}

//-(void)labelAdd{
  //  [self.view addSubview:label];
//}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


-(void)again{
    NSLog(@"%d", levelSelectUd);
    levelSelect = [[LevelSelect alloc] initWithNibName:@"LevelSelect" bundle:nil];
    levelSelect.view.frame = self.view.bounds;
    [self.view addSubview:levelSelect.view];
   // [levelSelect preStart];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)dealloc{
    [super dealloc];
    [levelSelect release];
}


@end
