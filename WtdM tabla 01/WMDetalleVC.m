//
//  WMDetalleVC.m
//  WtdM tabla 01
//
//  Created by Edu Ardo on 03/07/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import "WMDetalleVC.h"

@interface WMDetalleVC ()

@end

@implementation WMDetalleVC

@synthesize delegado;

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
//    self.title = self.nombreCelda;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
