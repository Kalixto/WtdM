//
//  WtdMAnuncioTablonTableVC.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WtdMAnuncioTablonModelo.h"

#define SECCION_EVENTOS 0
#define SECCION_TURISMO 1
#define SECCION_RESTAURACION 2

@interface WtdMAnuncioTablonTableVC : UITableViewController

@property (nonatomic, strong) WtdMAnuncioTablonModelo *modelo;

-(id) initWithModelo: (WtdMAnuncioTablonModelo *) aModelo
               style:(UITableViewStyle) aStyle;

@end
