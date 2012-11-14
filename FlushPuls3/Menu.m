//
//  Menu.m
//  FlushPuls3
//
//  Created by  荒木 力 on 12/09/20.
//  Copyright (c) 2012年  荒木 力. All rights reserved.
//

#import "Menu.h"
#import "LevelSelect.h"

LevelSelect *levelSelect;

@interface Menu ()

@end

@implementation Menu

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
    
    //タイトル画面の画像設定
    UIImage *title = [UIImage imageNamed:@"FPmain.png"];
    
    UIImageView *imageView = [[[UIImageView alloc] init] autorelease];
    [imageView setImage:title];
    [imageView setFrame:CGRectMake(0, 0, 480, 360)];
    [self.view addSubview:imageView];

    
        
    
}

-(void)lev{
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    }

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    levelSelect = [[LevelSelect alloc] initWithNibName:@"LevelSelect" bundle:nil];
    levelSelect.view.frame = self.view.bounds;
    [self.view addSubview:levelSelect.view];
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return ((toInterfaceOrientation == UIInterfaceOrientationLandscapeRight)|| (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft));
}

-(NSUInteger)supportedInterfaceOrientations{
    return UIInterfaceOrientationMaskLandscape;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)dealloc{
    [super dealloc];
    [levelSelect release];
}

@end
