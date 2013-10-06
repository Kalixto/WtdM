//
//  WtdMCursoVC.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WtdMCursoModelo.h"

@interface WtdMCursoVC : UIViewController

// Propiedades

@property (strong, nonatomic) WtdMCursoModelo *modelo;

@property (weak, nonatomic) IBOutlet UILabel *ciudadLabel;
@property (weak, nonatomic) IBOutlet UILabel *notasLabel;
@property (weak, nonatomic) IBOutlet UIImageView *logoView;

-(id) initWithModelo: (WtdMCursoModelo *) aModelo;

-(IBAction)displayUrl:(id)sender;
-(IBAction)displayPlano:(id)sender;

@end
