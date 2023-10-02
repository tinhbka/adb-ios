//
//  ViewController.m
//  adb-ios
//
//  Created by Li Zonghai on 9/28/15.
//  Copyright (c) 2015 Li Zonghai. All rights reserved.
//

#import "ViewController.h"
#import "adb_ios-Swift.h"


#define IP  "192.168.1.79"

@interface ViewController ()
@property(strong) Adb *adb;

@end

@implementation ViewController
@synthesize adb = _adb;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _adb = [[Adb alloc] init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) list:(id)sender
{
  
}


-(IBAction)connectBtn:(id)sender
{
    [_adb connectWithHost:@IP];
}

-(IBAction)installApkBtn:(id)sender
{
    
}


-(IBAction)uninstallApkBtn:(id)sender
{
    
}


-(IBAction)startApk:(id)sender
{
    [_adb runShellWithCommand:@"input keyevent 3"];
}


-(IBAction)disconnect:(id)sender
{
    
}


-(IBAction)ps:(id)sender
{
    
}

@end
