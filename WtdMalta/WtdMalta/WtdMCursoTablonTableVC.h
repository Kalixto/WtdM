//
//  WtdMCursoTablonTableVC.h
//  WtdMalta
//
//  Created by Edu Ardo on 03/10/13.
//  Copyright (c) 2013 Edu Ardo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WtdMCursoTablonModelo.h"

#define SECCION_IDIOMAS 0
#define SECCION_BUCEO 1
#define SECCION_COCINA 2

@interface WtdMCursoTablonTableVC : UITableViewController

@property (strong, nonatomic) WtdMCursoTablonModelo *modelo;

-(id) initWithModelo: (WtdMCursoTablonModelo *) aModelo
               style:(UITableViewStyle) aStyle;

@end
