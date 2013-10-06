//
//  WtdMAnuncioWebVC.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WtdMAnuncioModelo.h"

@interface WtdMAnuncioWebVC : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) WtdMAnuncioModelo *modelo;
@property (weak, nonatomic) IBOutlet UIWebView *browser;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *visorActividad;

-(id) initWithModelo: (WtdMAnuncioModelo *) aModelo;

@end
