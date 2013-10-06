//
//  WtdMCursoWebVc.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WtdMCursoModelo.h"

@interface WtdMCursoWebVc : UIViewController <UIWebViewDelegate>

@property (strong, nonatomic) WtdMCursoModelo *modelo;
@property (weak, nonatomic) IBOutlet UIWebView *browser;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *visorActividad;

-(id) initWithModelo: (WtdMCursoModelo *) aModelo;

@end
