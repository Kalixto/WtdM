//
//  WtdMAnuncioVC.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WtdMAnuncioModelo.h"

@interface WtdMAnuncioVC : UIViewController

// Propiedades

@property (strong, nonatomic) WtdMAnuncioModelo *modelo;

// @property (weak, nonatomic) IBOutlet UIImageView *logoView;
@property (weak, nonatomic) IBOutlet UIImageView *fotoView;
@property (weak, nonatomic) IBOutlet UITextView *notasLabel;

-(id) initWithModelo: (WtdMAnuncioModelo *) aModelo;

-(IBAction)displayUrl:(id)sender;
-(IBAction)displayPlano:(id)sender;

@end
